UPDATE employees
SET hourly_pay = 40.20
WHERE employee_id = 4;

UPDATE employees
SET hourly_pay = 23,
    hire_date = "2022-02-01"
WHERE employee_id = 5;

SELECT * FROM employees;

-- DELETE 
DELETE FROM employees
WHERE employee_id = 5;

