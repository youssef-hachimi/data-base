CREATE DATABASE broCode;
CREATE TABLE employee(
    employee_id INT,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    hourly_pay DECIMAL(5, 2),
    hire_date DATE
);
SELECT * FROM employee;
-- rename table:
RENAME TABLE employee TO employees;
-- drop table :
DROP TABLE employees;
-- ALTER (add new colmun)
ALTER TABLE employees
ADD phone VARCHAR(15);
-- rename column name
ALTER TABLE employees
RENAME COLUMN phone TO email;
-- change data type of column
ALTER TABLE employees
MODIFY COLUMN email VARCHAR(50);
-- change position of column
ALTER TABLE employees
MODIFY email VARCHAR(50)
AFTER last_name;

ALTER TABLE employees
MODIFY email VARCHAR(50)
FIRST ;
-- drop column
ALTER TABLE employees
DROP COLUMN email;