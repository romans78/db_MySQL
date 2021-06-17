
/*
2. Пусть задан некоторый пользователь.
Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим
пользователем.
*/
set @user_id := 4

select * from users where id in (select if(from_user_id = @user_id,to_user_id,from_user_id) from messages m 
where if(from_user_id = @user_id,to_user_id,from_user_id) in
(select if(from_user_id = @user_id,to_user_id,from_user_id) as friend_id from friend_requests
where (to_user_id = @user_id or from_user_id =@user_id) and accepted = 1)
and if(from_user_id = @user_id,from_user_id,to_user_id) = @user_id
group by if(from_user_id = @user_id,to_user_id,from_user_id)
having count(m.id) >= all (select count(*) from messages where if(from_user_id = @user_id,to_user_id,from_user_id) in
(select if(from_user_id = @user_id,to_user_id,from_user_id) as friend_id from friend_requests 
where (to_user_id = @user_id or from_user_id =@user_id) and accepted = 1)
and if(from_user_id = @user_id,from_user_id,to_user_id) = @user_id 
group by if(from_user_id = @user_id,to_user_id,from_user_id)));



/*
3. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.
*/

select count(*) from likes where to_user_id in
(select t.id from (select row_number() over(order by created_at desc) as n, id from users) t where t.n<=10) and like_type='user';


/*
4. Определить кто больше поставил лайков (всего) - мужчины или женщины?
*/

/*
concat(character(length(tbl.n_likes)+ord('a')),tbl.n_likes,gender)
Здесь крайне маловероятно, что число будет длиннее, чем 26 цифр
*/
select if(right(max(concat(character(length(tbl.n_likes)+ord('a')),tbl.n_likes,gender)),1)='f', 'female', 'male') from 
(select gender, sum((select count(from_user_id) from likes where user_id=from_user_id )) n_likes from profiles p where gender in ('f','m') group by gender) tbl;


/*
5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании
социальной сети.
*/

select * from users where id in
(select user_id from (select row_number() over(order by count(u.user_id)) as n, u.user_id as user_id, count(u.user_id) as activity from
(select user_id from communities_users
union all
select user_id from media
union all
select from_user_id as user_id from likes 
union all
select from_user_id as user_id from messages
union all
select from_user_id as user_id from friend_requests
union all
select to_user_id as user_id from friend_requests where accepted=1) u group by u.user_id) t where t.n<=10);
