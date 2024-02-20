-- display the contacts of employees in ascending order by first name
CREATE VIEW employee_contacts AS
    SELECT 
        first_name, last_name, email, phone_number, department_id
    FROM
        employees emp
    INNER JOIN
        departments dept ON dept.department_id = emp.department_id
    ORDER BY first_name;


-- display the top 5 salaries in descending order
SELECT
	employee_id,
	first_name,
	last_name,
	salary
FROM
	employees
ORDER BY
	salary DESC
LIMIT 5;


-- display the employees by location and department
CREATE VIEW employee_location AS
    SELECT 
        first_name, last_name, department_id, location_id
    FROM
        employees emp
    INNER JOIN 
        work_location workloc 
        ON  workloc.location_id = emp.location_id;


-- display the list of employees, position, department id (from the department table), and project id
CREATE VIEW employee_work AS
    SELECT 
        first_name, last_name, job_position, department_id, project_id
    FROM
        employees emp
    INNER JOIN 
        work_department  
        ON  dept.department_id = emp.department_id;
    INNER JOIN 
        project  
        ON  project.project_id = emp.project_id;


-- display the list of employees who are working on a project, the project id and their salary
CREATE VIEW employee_project_pay AS
    SELECT 
        first_name, last_name, project_id, gross_salary
    FROM
        employees emp
    INNER JOIN 
        project  
        ON  project.project_id = emp.project_id;
    INNER JOIN 
        payroll pay  
        ON  pay.gross_salary = emp.gross_salary;

-- alter table to add column "bonus" for payroll
Alter Table payroll
ADD bonus INT;

-- update bonus amounts for those working on proj02
UPDATE 
    payroll
SET 
    bonus
= CASE employee_id
WHEN 100101 THEN 2150
WHEN 100103 THEN 2150
WHEN 100108 THEN 2150
ELSE bonus
END
WHERE employee_id IN(100101,100103,100108);

-- insert increase in pay to payroll table; use addition operator to increase gross salary
SELECT 
    gross_salary, gross_salary+100
    AS new_gross_salary
FROM payroll;


-- use division operators to determine new hourly pay
SELECT 
    employee_id,
    gross_salary,
    gross_salary/1920
    AS new_hourly_pay
FROM payroll;


-- dispaly the employees whose salaries are less than 90000
SELECT
    first_name,
    last_name,
    gross_salary
FROM employee emp
INNER JOIN 
        payroll pay  
        ON  pay.gross_salary = emp.gross_salary;
WHERE gross_salary < 90000;
ORDER BY 
    gross_salary DESC;


-- display gross salary for those less than 100000 but greater than 90000
SELECT
    first_name,
    last_name,
    gross_salary
FROM employee emp
INNER JOIN 
        payroll pay  
        ON  pay.gross_salary = emp.gross_salary;
WHERE gross_salary < 90000 AND gross_salary > 100000;

-- display the list of employees, location and salary
SELECT
    first_name,
    last_name,
    location_id,
    gross_salary
FROM employee emp
INNER JOIN 
        work_location workloc  
        ON  workloc.location_id = emp.location_id;
INNER JOIN 
        payroll pay  
        ON  pay.gross_salary = emp.gross_salary;

SELECT * FROM emp;


-- update pay for those living in the SOUTHEAST quadrant
UPDATE 
    payroll
SET 
    gross_salary
    = gross_salary + (gross_salary / 10)
WHERE 
location_id IN (
                SELECT location_id 
                from work_location 
                WHERE location_id=204 location_id=205
               );

-- add new emp
INSERT INTO employee VALUES (011,100111,'Alice','West','west.alice@gmail.com',9781234567,to_date('24-JAN-16', 'dd-MON-yyyy'),'Accountant','dept008','Austin','Texas',209,100111);
INSERT INTO employee VALUES (012,100112,'Anna','Mitchell','mitchell.anna@hotmail.com',8051234567,to_date('24-FEB-14', 'dd-MON-yyyy'),'Cybersecurity Expert','dept005','San Antonio','Texas',210,100112);

INSERT INTO education VALUES (011,100111,'Bachelor',2021,02);
INSERT INTO education VALUES (012,100112,'MS',2022,03);

INSERT INTO account_details VALUES (011,100111,'Chase','123417','267084199',111);
INSERT INTO account_details VALUES (012,100112,'Citibank','123418','267084131',112);

INSERT INTO payroll VALUES (011,100111,02,43,null,20,82560,1.4,11.7);
INSERT INTO payroll VALUES (012,100112,03,53,null,20,101,0.9,11.7);

SELECT * FROM employee;