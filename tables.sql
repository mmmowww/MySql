LOCK employees READ;

BEGIN;
INSERT INTO `employees`.`dept_manager` (`dept_no`, `emp_no`, `from_date`, `to_date`) VALUES ('d009', '111940', '1996-01-03', '9999-01-01');
INSERT INTO `employees`.`employees` (`emp_no`, `birth_date`, `first_name`, `last_name`, `gender`, `hire_date`) VALUES ('111940', '1996-01-03', 'Ivan', 'Ivanov', 'M', '9999-01-01');
INSERT INTO `employees`.`salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('111940', '2143214', '1996-01-03', '9999-01-01');
INSERT INTO `employees`.`dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('111940', 'd009', '1996-01-03', '9999-01-01');
SELECT employees.emp_no, dept_manager.emp_no, salaries.emp_no FROM employees,dept_manager,salaries WHERE employees.emp_no = 111940 AND dept_manager.emp_no = 111940 AND salaries.emp_no = 111940;      
COMMIT;

BEGIN;
INSERT INTO `employees`.`dept_manager` (`dept_no`, `emp_no`, `from_date`, `to_date`) VALUES ('d009', '111941', '1996-01-03', '9999-01-01');
INSERT INTO `employees`.`employees` (`emp_no`, `birth_date`, `first_name`, `last_name`, `gender`, `hire_date`) VALUES ('111941', '1996-01-03', 'Anton', 'Ivanov', 'M', '9999-01-01');
INSERT INTO `employees`.`salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('111941', '2143214', '1996-01-03', '9999-01-01');
INSERT INTO `employees`.`dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('111941', 'd009', '1996-01-03', '9999-01-01');
SELECT employees.emp_no, dept_manager.emp_no, salaries.emp_no FROM employees,dept_manager,salaries WHERE employees.emp_no = 111941 AND dept_manager.emp_no = 111941 AND salaries.emp_no = 111941;      
COMMIT;

BEGIN;
INSERT INTO `employees`.`dept_manager` (`dept_no`, `emp_no`, `from_date`, `to_date`) VALUES ('d009', '111942', '1996-01-03', '9999-01-01');
INSERT INTO `employees`.`employees` (`emp_no`, `birth_date`, `first_name`, `last_name`, `gender`, `hire_date`) VALUES ('111942', '1996-01-03', 'Sergey', 'Ivanov', 'M', '9999-01-01');
INSERT INTO `employees`.`salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('111942', '2143214', '1996-01-03', '9999-01-01');
INSERT INTO `employees`.`dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('111942', 'd009', '1996-01-03', '9999-01-01');
SELECT employees.emp_no, dept_manager.emp_no, salaries.emp_no FROM employees,dept_manager,salaries WHERE employees.emp_no = 111942 AND dept_manager.emp_no = 111942 AND salaries.emp_no = 111942;      
COMMIT;

UNLOCK TABLES;