USE `employees`;
#///////WIEW DZ////
#//1//
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`%` 
    SQL SECURITY DEFINER
VIEW `employees`.`new_view` AS
    SELECT 
        CONCAT(`e`.`last_name`, `e`.`first_name`) AS `full_name`,
        MAX(`s`.`salary`) AS `max_salary`
    FROM
        (`employees`.`employees` `e`
        JOIN `employees`.`salaries` `s`)
    WHERE
        ((`e`.`emp_no` = `s`.`emp_no`)
            AND (`s`.`to_date` = '9999-01-01'))
    GROUP BY `e`.`emp_no`
    ORDER BY `max_salary` DESC;
#/////////
#///2////
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`%` 
    SQL SECURITY DEFINER
VIEW `new_view1` AS
    SELECT 
        `d`.`dept_name` AS `dept_name`, COUNT(0) AS `COUNT(*)`
    FROM
        ((`employees` `e`
        JOIN `dept_emp` `de`)
        JOIN `departments` `d`)
    WHERE
        ((`d`.`dept_no` = `de`.`dept_no`)
            AND (`de`.`emp_no` = `e`.`emp_no`))
    GROUP BY `d`.`dept_no`;
#///////////
#////3////
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`%` 
    SQL SECURITY DEFINER
VIEW `new_view3` AS
    SELECT 
        `d`.`dept_name` AS `dept_name`,
        COUNT(0) AS `COUNT(*)`,
        SUM(`sa`.`salary`) AS `sum_salary`
    FROM
        (((`employees` `e`
        JOIN `dept_emp` `de`)
        JOIN `departments` `d`)
        JOIN `salaries` `sa`)
    WHERE
        ((`d`.`dept_no` = `de`.`dept_no`)
            AND (`de`.`emp_no` = `e`.`emp_no`)
            AND (`e`.`emp_no` = `sa`.`emp_no`)
            AND (`sa`.`to_date` = '9999-01-01'));
#///////////
#/////4///////
DELIMITER $$
CREATE DEFINER=`root`@`%` FUNCTION `MenegerNumero` (A CHAR, B CHAR)
RETURNS INT
BEGIN
DECLARE emp_id INT;
SELECT DISTINCT
    E.emp_no INTO emp_id
FROM
    employees E,
    dept_emp DE,
    dept_manager DM,
    departments DS,
    salaries SS
WHERE
    DM.emp_no = E.emp_no
        AND SS.to_date = '9999-01-01'
        AND first_name = A
        AND last_name = B;

RETURN emp_id;
END;
$$
DELIMITER ;

#/////////////////////////
#/////5/////
DELIMITER $$
CREATE TRIGGER `employees`.`employees_BEFORE_INSERT` BEFORE INSERT ON `employees` FOR EACH ROW
BEGIN
INSERT INTO salaries (emp_no,salary,from_data,to_date) VALUES (NEW.emp_no,1000,CURTIME());
END;
$$
DELIMITER ;