/*
Практическое задание по теме “Транзакции, переменные, представления”

1. В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных.
Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте
транзакции.
*/
start transaction;
insert into sample.users (sample.users.name) select shop.users.name from shop.users where shop.users.id=1;
delete from shop.users where shop.users.id=1;
commit;

/*
2. Создайте представление, которое выводит название name товарной позиции из таблицы
products и соответствующее название каталога name из таблицы catalogs.
*/
create view prod_cat as select products.name as prod_name, catalogs.name as cat_name from products join catalogs on products.catalog_id=catalogs.id;
select * from prod_cat;

/*
Практическое задание по теме “Хранимые процедуры и функции, триггеры"

1. Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от
текущего времени суток. С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с
12:00 до 18:00 функция должна возвращать фразу "Добрый день", с 18:00 до 00:00 — "Добрый
вечер", с 00:00 до 6:00 — "Доброй ночи".
*/

delimiter $
create function hello()
returns text
deterministic
begin
set @result ='';
set @h = hour(curtime());
if @h>=6 and @h<12 then 
set @result='Доброе утро';
elseif @h>=12 and @h<18 then 
set @result='Добрый день';
elseif @h>=18 and @h<=23 then 
set @result='Добрый  вечер';
else
set @result='Доброй ночи';
end if;
return @result;
end$
delimiter ;

select hello();

/*
2. В таблице products есть два текстовых поля: name с названием товара и description с его
описанием. Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля
принимают неопределенное значение NULL неприемлема. Используя триггеры, добейтесь
того, чтобы одно из этих полей или оба поля были заполнены. При попытке присвоить полям
NULL-значение необходимо отменить операцию.
*/
delimiter $
create trigger bi_products before insert on products
for each row begin
	if new.name is null and new.description is null then
    signal sqlstate '45000' set message_text = 'name  и description не могут одновременно быть равным null';
    end if;
end$
delimiter ;

insert into products (name, description) values('test0','test0');
insert into products (name, description) values('test1',null);
insert into products (name, description) values(null,'test2');
insert into products (name, description) values(null,null);
select * from products;

/*
# id, name, description, price, catalog_id, created_at, updated_at
'1', 'Intel Core i3-8100', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', '7890.00', '1', '2021-07-04 23:28:59', '2021-07-04 23:55:54'
'2', 'Intel Core i5-7400', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', '12700.00', '1', '2021-07-04 23:28:59', '2021-07-04 23:55:54'
'3', 'AMD FX-8320E', 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', '4780.00', '1', '2021-07-04 23:28:59', '2021-07-04 23:55:54'
'4', 'AMD FX-8320', 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', '7120.00', '1', '2021-07-04 23:28:59', '2021-07-04 23:55:54'
'5', 'ASUS ROG MAXIMUS X HERO', 'Материнская плата ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX', '19310.00', '2', '2021-07-04 23:28:59', '2021-07-04 23:55:54'
'6', 'Gigabyte H310M S2H', 'Материнская плата Gigabyte H310M S2H, H310, Socket 1151-V2, DDR4, mATX', '4790.00', '2', '2021-07-04 23:28:59', '2021-07-04 23:55:54'
'7', 'MSI B250M GAMING PRO', 'Материнская плата MSI B250M GAMING PRO, B250, Socket 1151, DDR4, mATX', '5060.00', '2', '2021-07-04 23:28:59', '2021-07-04 23:55:54'
'12', 'test0', 'test0', NULL, NULL, '2021-07-05 00:51:11', '2021-07-05 00:51:11'
'13', 'test1', NULL, NULL, NULL, '2021-07-05 00:51:11', '2021-07-05 00:51:11'
'14', NULL, 'test2', NULL, NULL, '2021-07-05 00:51:11', '2021-07-05 00:51:11'

*/