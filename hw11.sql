
create table logs(
id serial auto_increment,
datet_time timestamp not null,
tablename varchar(100) not null,
primary_key_id bigint unsigned not null,
name_content varchar(255)
) engine=ARCHIVE;

drop trigger if exists ai_users;
delimiter $
create trigger ai_users after insert on users
for each row begin
	insert into `logs`
		values(default,current_timestamp(),'users',new.id,new.name);
end$
delimiter ;

drop trigger if exists ai_catalogs;
delimiter $
create trigger ai_catalogs after insert on catalogs
for each row begin
	insert into `logs` 
		values(default,current_timestamp(),'catalogs',new.id,new.name);
end$
delimiter ;

drop trigger if exists ai_products;
delimiter $
create trigger ai_products after insert on products
for each row begin
	insert into `logs`
		values(default,current_timestamp(),'products',new.id,new.name);
end$
delimiter ;

insert into users values(default, 'Евгений', '1990-08-15',default,default);
insert into catalogs values(default, 'Мониторы');
insert into products values(default, 'PLL 2710W', 'Монитор дя персональных компьютеров', 5000.00, 6, default, default);

select * from `logs`;
/*
1	2021-07-12 11:09:02	users	9	Евгений
2	2021-07-12 11:09:02	catalogs	7	Мониторы
3	2021-07-12 11:11:20	products	15	PLL 2710W
*/