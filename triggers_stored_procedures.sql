/*
Для таблицы transactions не может быть следующих ситуаций при добавление новой записи:
.... transaction_description1_id   transaction_description2_id   transaction_description3_id
		null							not null					    не имеет значения
        null							null								not null

*/

delimiter $
create trigger bi_transactions before insert on transactions
for each row begin
	if (new.transaction_description1_id is null and (new.transaction_description2_id is not null or new.transaction_description3_id is not null))
       or (new.transaction_description1_id is not null and new.transaction_description2_id is not null and new.transaction_description3_id is null)
    then
    signal sqlstate '45000' set message_text = 'transaction_description<i>_id не может быть равным not null, если любое transaction_description<j>_id, где j < i равно null ';
    end if;
end$
delimiter ;

INSERT INTO transactions values(14,DEFAULT,32,87 ,'кредит',12310.46,NULL,NULL,NULL,323,NULL);
INSERT INTO transactions values(14,DEFAULT,32,87 ,'кредит',12310.46,NULL,NULL,NULL,476,323);
INSERT INTO transactions values(14,DEFAULT,32,87 ,'кредит',12310.46,NULL,NULL,NULL,NULL,323);

/*
Результат попыток добавления новых записей в таблицу:
Error Code: 1644. transaction_description<i>_id не может быть равным not null, если любое transaction_description<j>_id, где j < i равно null 
*/


/*
Процедура запускает все имеющиеся представления.
*/
drop procedure if exists show_views;
delimiter $
create procedure show_views()
begin
	declare more int default true;
    declare view_name varchar(100);
    declare curs cursor for select table_name from information_schema.`TABLES` where TABLE_TYPE like 'VIEW' and TABLE_SCHEMA like 'bank';
	open curs;
    while more do
		fetch curs into view_name;
        set @s=CONCAT("select * from ",view_name,";");
        prepare stmt from @s;
		execute stmt;
		deallocate prepare stmt;
    end while;
    close curs; 
end$
delimiter ;

call show_views();

