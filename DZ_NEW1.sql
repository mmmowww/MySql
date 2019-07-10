///////WIEW DZ////
//1//
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
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
    ORDER BY `max_salary` DESC
/////////
///2////
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
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
    GROUP BY `d`.`dept_no`
///////////
////3////
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
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
            AND (`sa`.`to_date` = '9999-01-01'))
///////////
/////4///////
CREATE DEFINER=`root`@`localhost` FUNCTION `MenegerNumero` (@A STRING(), @B STRING())
RETURNS STRING() CHARSET utf8mb4
BEGIN

SELECT DISTINCT
    *
FROM
    employees E,
    dept_emp DE,
    dept_manager DM,
    departments DS,
    salaries SS
WHERE
    DM.emp_no = E.emp_no
        AND SS.to_date = '9999-01-01'
        AND first_name = @A
        AND last_name = @B;
 
RETURN CONCAT('NUMERO = 'E.emp_no);
END

/////////////////////////
/////5/////

CREATE DEFINER = CURRENT_USER TRIGGER `employees`.`employees_BEFORE_INSERT` BEFORE INSERT ON `employees` FOR EACH ROW
BEGIN
SELECT employees.emp_no FROM employees AS EMP_NO ORDER BY emp_no DESC
INSERT INTO salaries (emp_no,salary,from_data,to_date) VALUES (EMP_NO,1000,CURTIME())
END
