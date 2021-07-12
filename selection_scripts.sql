/*
Вывести суммы всех транзакций по типу транзакции (дебит/кредит).
*/
select transaction_type, sum(transaction_amount) from transactions group by transaction_type;


/*
Вывести номер банковского счёта, баланса и имя владельца длы всех банковских счетов, у которых ровно 2 владельца
*/
select account_number, balance,owner_first_name,owner_last_name from bank_accounts join bank_account_owners on bank_accounts.id=bank_account_owners.account_id 
	where bank_accounts.id in (select ba.id from bank_accounts ba join bank_account_owners bao on ba.id=bao.account_id group by ba.id having count(bao.id) = 2);


/*
Вывести номера банковских счетов, у которых было более 5ти транзакций.
*/
select account_number from bank_accounts ba where 5 <(select count(t.bank_account_id) from transactions t where t.bank_account_id=ba.id);
