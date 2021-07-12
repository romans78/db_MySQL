/*
Создать представление, которое показывает всех владельцов банковского счёта
*/


drop view if exists all_bank_account_owners;
create view all_bank_account_owners as
select ba.account_number as account, group_concat(concat(bao.owner_first_name, ' ' , bao.owner_last_name)) as owners from bank_accounts ba join bank_account_owners bao on ba.id=bao.account_id group by ba.account_number;

select * from all_bank_account_owners;


/*
Создать представление, которое показывает сумму всех транзакций для каждого банковского счёта
*/

drop view if exists transaction_total_by_account;
create view transaction_total_by_account as
select ba.account_number as account, sum(if(t.transaction_type='дебит', t.transaction_amount, -t.transaction_amount)) as total from bank_accounts ba join transactions t on ba.id = t.bank_account_id group by ba.account_number;

select * from transaction_total_by_account;

