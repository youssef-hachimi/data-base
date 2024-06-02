INSERT INTO employees
VALUES (1,"ibrahim","amar",30.35,"2020-05-03"),
    (2,"youssef","hac",35.35,"2020-02-02"),
    (3,"hamid","mah",20.90,"2021-06-05"),
    (4,"haj","rac",27.60,"2022-08-09");

INSERT INTO employees(employee_id,f irst_name, last_name)
VALUES (5,"ibrahim","amar");
--===============================================================
SELECT * FROM employees;
SELECT first_name , last_name
FROM employees;
--
SELECT * FROM employees
WHERE employee_id = 1 OR employee_id = 2 ;

SELECT * FROM employees
WHERE employee_id = 1 AND employee_id = 2 ;

SELECT * FROM employees
WHERE NOT employee_id  = 5;
-- WHERE NOT employee_id  != 5

SELECT * FROM employees
WHERE hire_date <= "2020-01-01";

SELECT * FROM employees
WHERE hire_date IS NULL;

SELECT first_name 
FROM employees
WHERE hire_date IS NOT NULL;




