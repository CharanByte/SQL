create database col;

CREATE TABLE departments (dept_id INT,dept_name VARCHAR(50),location VARCHAR(100),budget bigint,established_date DATE );
INSERT INTO departments (dept_name, location, budget, established_date) VALUES
('cs', 'bengaluru', 50000.00, '2010-03-15'),
('IT', 'kolar', 120000.00, '2015-06-01'),
('ece', 'mysuru', 80000.00, '2012-09-10'),
('Marketing', 'bengaluru', 75000.00, '2018-01-21'),
('Sales', 'udipi', 60000.00, '2017-04-18'),
('is', 'ballari', 90000.00, '2013-11-22'),
('Legal', 'bidar', 45000.00, '2016-05-30'),
('Customer Service', 'mumbai', 55000.00, '2020-07-07'),
('civil', 'hassan', 130000.00, '2014-10-05'),
('mech', 'chikkaballapur', 70000.00, '2019-02-12');

CREATE TABLE employees (emp_id INT ,emp_name VARCHAR(100),dept_id INT,hire_date DATE,salary float);

INSERT INTO employees (emp_name, dept_id, hire_date, salary) VALUES
('raj', 1, '2020-01-15', 60000.00),
('ramu', 2, '2018-03-22', 85000.00),
('ajay', 3, '2019-07-19', 70000.00),
('sachin', 4, '2021-08-11', 72000.00),
('raju', 5, '2022-05-13', 65000.00),
('charan', 6, '2017-12-01', 80000.00),
('nandan', 7, '2016-09-08', 50000.00),
('likith', 8, '2019-11-25', 58000.00),
('chandan', 9, '2015-04-20', 90000.00),
('kishor', 10, '2021-10-30', 65000.00);

SELECT * FROM employees WHERE salary BETWEEN 60000 AND 80000;

SELECT * FROM employees WHERE emp_name LIKE 'r%';

SELECT * FROM departments WHERE location LIKE 'be%';

SELECT * FROM employees ORDER BY salary DESC;

SELECT * FROM departments ORDER BY established_date;

SELECT emp_id, UPPER(emp_name) AS emp_name, dept_id, hire_date, salary FROM employees;

SELECT dept_id, LOWER(dept_name) AS dept_name, location, budget, established_date FROM departments;

SELECT dept_id, CONCAT(dept_name, ' _', location) AS dept_info, budget, established_date FROM departments;

SELECT * FROM employees WHERE LENGTH(emp_name) > 5;

CREATE INDEX idx_salary ON employees(salary);


SELECT * FROM employees;
