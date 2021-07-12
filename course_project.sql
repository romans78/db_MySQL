use bank;

drop table if exists transactions;
drop table if exists debit_cards;
drop table if exists bank_account_owners;
drop table if exists bank_accounts;
drop table if exists bank_account_names;
drop table if exists bank_account_types;
create table bank_account_types(
	id serial primary key,
	account_type varchar(100) not null,
	unique unique_type(account_type)
);


drop table if exists bank_account_names;
create table bank_account_names(
	id serial primary key,
    account_types_id bigint unsigned not null,
	account_name varchar(100) not null unique,
    constraint names_types_ibfk foreign key(account_types_id) references bank_account_types(id)
    on update cascade
);

drop table if exists bank_accounts;
create table bank_accounts(
	id serial primary key,
    account_number varchar(20) not null unique,
	account_name_id bigint unsigned not null,
    balance decimal(12,2) not null,
    constraint accounts_names_ibfk foreign key(account_name_id) references bank_account_names(id)
    on update cascade
);

drop table if exists bank_account_owner_types;
create table bank_account_owner_types(
	id serial primary key,
    owner_type enum('основной', 'авторизованный','бизнес') not null unique
);

drop table if exists bank_account_owners;
create table bank_account_owners(
	id serial primary key,
    account_id bigint unsigned not null,
    owner_type_id bigint unsigned not null,
    owner_tax_id varchar(12) not null,
    owner_first_name varchar(100) not null,
    owner_last_name varchar(100) not null,
    constraint owners_owner_types_ibfk foreign key(owner_type_id) references bank_account_owner_types(id)
    on update cascade,
    constraint owners_accounts_ibfk foreign key(account_id) references bank_accounts(id)
    on update cascade,
    unique key acc_tax (account_id, owner_tax_id)
);

drop table if exists debit_card_types;
create table debit_card_types(
	id serial primary key,
    debit_card_type enum('VISA', 'MASTER CARD','МИР') not null unique
);

drop table if exists debit_cards;
create table debit_cards(
	id serial primary key,
    debit_card_number varchar(16) not null unique,
	account_id bigint unsigned not null,
    main_owner_id bigint unsigned not null,
    owner_id bigint unsigned not null,
    debit_card_type_id bigint unsigned not null,
    constraint debit_card_account_ibfk foreign key(account_id) references bank_accounts(id)
    on update cascade,
    constraint debit_card_owner_ibfk foreign key(main_owner_id) references bank_account_owners(id)
    on update cascade,
    constraint debit_card_owner_ibfk_2 foreign key(owner_id) references bank_account_owners(id)
    on update cascade,
    constraint debit_card_types_ibfk foreign key(debit_card_type_id) references debit_card_types(id)
    on update cascade
);

drop table if exists transaction_classes;
create table transaction_classes(
	id serial primary key,
    transaction_class varchar(30) not null unique
);

drop table if exists transaction_descriptions;
create table transaction_descriptions(
	id serial primary key,
    transaction_description varchar(255) not null
);

drop table if exists transactions;
create table transactions(
	id serial primary key,
    transaction_date datetime not null default current_timestamp,
    transaction_class_id bigint unsigned not null,
    bank_account_id bigint unsigned not null,
    transaction_type enum('дебит','кредит') not null,
    transaction_amount decimal(12, 2) not null,
    is_internal tinyint(1) default 0,
    internal_transaction_id bigint unsigned,    
    transaction_description1_id bigint unsigned,
    transaction_description2_id bigint unsigned,
    transaction_description3_id bigint unsigned,
    constraint transaction_account_ibfk foreign key(bank_account_id) references bank_accounts(id)
    on update cascade,
    constraint transaction_class_ibfk foreign key(transaction_class_id) references transaction_classes(id)
    on update cascade,
    constraint transaction_transaction_ibfk foreign key(internal_transaction_id) references transactions(id)
    on update cascade,
    constraint transaction_description_ibfk foreign key(transaction_description1_id) references transaction_descriptions(id)
    on update cascade,
    constraint transaction_description_ibfk_2 foreign key(transaction_description2_id) references transaction_descriptions(id)
    on update cascade,
    constraint transaction_description_ibfk_3 foreign key(transaction_description3_id) references transaction_descriptions(id)
    on update cascade
);



