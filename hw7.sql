/*
1. Составьте список пользователей users, которые осуществили хотя бы один заказ orders в
интернет магазине.
*/

select distinct users.* from users join orders on users.id=orders.user_id;


/*
2. Выведите список товаров products и разделов catalogs, который соответствует товару.
*/

select products.*, catalogs.name as `type` from products join catalogs on products.catalog_id=catalogs.id;

/*
3. (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label,
name). Поля from, to и label содержат английские названия городов, поле name — русское.
Выведите список рейсов flights с русскими названиями городов.
*/

create table cities(
	label varchar(30) primary key,
    name varchar(30)
);

create table flights(
	id serial auto_increment,
    `from` varchar(30) not null,
    `to` varchar(30) not null,
    constraint fk_flight_cities_from foreign key (`from`) references cities(label),
    constraint fk_flight_cities_to foreign key (`to`) references cities(label)
);

insert ignore into cities values('moscow', 'Москва'),('irkutsk', 'Иркутск'),('novgorod', 'Новгород'),('kazan', 'Казань'),('omsk', 'Омск');
insert into flights(`from`,`to`) values ('moscow','omsk'),('novgorod','kazan'),('irkutsk','moscow'),('omsk','irkutsk'),('moscow','kazan');

select id, c.name as `from`, c2.name  as `to` from cities c join flights f on c.label=f.`from` join cities c2 on c2.label=f.`to` order by f.id;