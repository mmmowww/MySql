/* ДЗ думал почему скрипт не работает коректно, вспонил что компютер не справился с 1.5 гиговым файлом города */;
/* Надеюсь я прав в синтексисе */;
use geodata;
SELECT * FROM geodata._countries FULL OUTER JOIN geodata._cities ON _countries.id = _cities.id;

SELECT citi FROM geodata._countries LEFT JOIN _cities.id ON _countries.id = 1;
  
use employees;
SELECT DISTINCT avg(salary) as avgSAL FROM salaries;

SELECT DISTINCT MAX(salary) as MAXSAL FROM salaries;

use employees;
SELECT  avg(salaries.salary) as avgSAL FROM salaries FULL  JOIN (salaries,employees) on salaries.emp_no = employees.emp_no;

use employees;
SELECT  MAX(salaries.salary) as MAXSAL FROM salaries FULL  JOIN (salaries,employees) on salaries.emp_no = employees.emp_no;
DELETE FROM employees WHERE salaries.salary = MAXSAL;

use employees;
SELECT  COUNT(dept_emp.emp_no)  FROM dept_emp LEFT JOIN dept_manager  ON dept_emp.emp_no = dept_manager.emp_no
UNION
SELECT COUNT(dept_manager.emp_no)  FROM dept_manager  RIGHT JOIN dept_emp  on dept_manager.emp_no = dept_emp.emp_no;

