create  table bank (account_holder varchar(25),account_number bigint,bank_name varchar(20),branch_code int,
    is_active boolean);
alter table bank
add column type_of_account varchar(20),
add column account_balance BIGINT,
add column account_currency varchar(20),
add column date_opened date,
add column phone_number varchar(20);

alter table bank
rename column type_of_account TO account_type,
rename column account_balance TO balance,
rename column account_currency TO currency,
rename column date_opened TO opened_date,
rename column phone_number TO contact_number;

insert into bank(account_holder, account_number, bank_name, branch_code, is_active, account_type, balance, currency, opened_date, contact_number)
values
('Raju', 65347658787, 'State Bank of India', 101, true, 'Checking', 50000, 'indian', '2020-01-01', '9876543210'),
('Arun', 97386869833, 'Canara Bank', 102, true, 'Savings', 150000, 'indian', '2019-02-02', '8765432109'),
('Vijay', 63486879898, 'Karnataka Bank', 103, true, 'Checking', 250000, 'indian', '2018-03-03', '7654321098'),
('Sunita', 477628789879, 'Syndicate Bank', 104, true, 'Savings', 350000, 'indian', '2017-04-04', '6543210987'),
('Rakesh', 68982989898, 'Vijaya Bank', 105, true, 'Checking', 450000, 'indian', '2016-05-05', '5432109876'),
('Lakshmi Hegde', 89879879828, 'Corporation Bank', 106, true, 'Savings', 550000, 'indian', '2015-06-06', '4321098765'),
('nandan', 8798798798792, 'Axis Bank', 107, true, 'Checking', 650000, 'indian', '2014-07-07', '3210987654'),
('Deepa', 8762878787, 'HDFC Bank', 108, true, 'Savings', 750000, 'indian', '2013-08-08', '2109876543'),
('Ram', 8989879898, 'ICICI Bank', 109, true, 'Checking', 850000, 'indian', '2012-09-09', '1098765432'),
('Priya', 7876898298, 'Union Bank', 110, true, 'Savings', 950000, 'indian', '2011-10-10', '0987654321');

UPDATE bank SET balance = 60000 WHERE account_holder = 'Raju';
UPDATE bank SET bank_name = 'IDBI Bank' WHERE account_holder = 'Arun';
UPDATE bank SET branch_code = 202 WHERE account_holder = 'Vijay';

UPDATE bank SET account_number =65347658787  WHERE account_holder='Raju';
UPDATE bank SET account_number =97386869833  WHERE account_holder='Arun';
UPDATE bank SET account_number =63486879898  WHERE account_holder='Vijay';
UPDATE bank SET account_number =477628789879  WHERE account_holder='Sunita';
UPDATE bank SET account_number =68982989898  WHERE account_holder='Rakesh';
UPDATE bank SET account_number =89879879828  WHERE account_holder='Lakshmi Hegde';
UPDATE bank SET account_number =8762878787  WHERE account_holder='Deepa';
UPDATE bank SET account_number =7876898298  WHERE account_holder='Priya';
UPDATE bank SET account_number =8989879898  WHERE account_holder='Ram';




SELECT * FROM bank WHERE balance > 500000 AND is_active = true;

SELECT * FROM bank WHERE bank_name IN ('Canara Bank', 'Karnataka Bank');
select * from bank;