/*
1. Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их
текущими датой и временем.
*/

update users set created_at=now(), updated_at=now();

/*
2. Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы
типом VARCHAR и в них долгое время помещались значения в формате 20.10.2017 8:10.
Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения.
*/

update users set created_at = str_to_date(test, '%d.%m.%Y %h:%i'), updated_at = str_to_date(test, '%d.%m.%Y %h:%i');

/*
3. В таблице складских запасов storehouses_products в поле value могут встречаться самые
разные цифры: 0, если товар закончился и выше нуля, если на складе имеются запасы.
Необходимо отсортировать записи таким образом, чтобы они выводились в порядке
увеличения значения value. Однако нулевые запасы должны выводиться в конце, после всех
записей.
*/

select * from storehouses_products order by if(value>0,value,2147483647);

/*
4. (по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в августе и
мае. Месяцы заданы в виде списка английских названий (may, august)
*/

select * from users where monthname(birthday_at) in ('May', 'August');

/*
5. (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса. SELECT * FROM
catalogs WHERE id IN (5, 1, 2); Отсортируйте записи в порядке, заданном в списке IN.
*/

select * from catalogs where id in (5, 1, 2) order by id%5;

/*Практическое задание теме «Агрегация данных»
*/

/*
1. Подсчитайте средний возраст пользователей в таблице users.
*/

select round(avg(datediff(now(),birthday_at)/365.25),2) as average_age from users;

/*
2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели.
Следует учесть, что необходимы дни недели текущего года, а не года рождения.
*/

select dayname(date(concat('2021-',month(birthday_at),'-', day(birthday_at)))) as day_name, count(*) as number_of_birthdays from users group by day_name;

/*
3. (по желанию) Подсчитайте произведение чисел в столбце таблицы.
*/

select round(exp(sum(log(id))),2) as ids_multiplied  from users;