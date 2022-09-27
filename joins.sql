

-- ejercicio 1

create view v_clients_accounts as select clients.id, clients.first_name, clients.last_name, clients.email, accounts.account_no, accounts.balance from clients left join accounts on clients.id = accounts.client_id;  

-- ejercicio 2

create view v_accounts_types as select accounts.account_no, accounts.client_id, account_types."name" from accounts right join account_types on accounts."type" = account_types.id; 

-- ejercicio 3

create view v_transactions_detail as select transactions.id, transactions.amount, transactions_types."name" from transactions left join transactions_types on transactions.transaction_type = transactions_types.id;

-- ejercicio 4

create view v_transactions_types_detail as select transactions.id, transactions.amount, transactions_types."name" from transactions right join transactions_types on transactions.transaction_type = transactions_types.id;