--CREATE TABLES--
---------------------------------------------------
-- employee
---------------------------------------------------
CREATE TABLE employee(
  employee_num INT(3),
  employee_id INT(6),
  first_name VARCHAR(25),
  last_name VARCHAR(25),
  email VARCHAR(100),
  phone_number INT(10),
  hire_date DATE,
  job_position VARCHAR(30),
  department_id VARCHAR(7),
  city VARCHAR2(25),
  state VARCHAR2(25),
  location_id INT(3),
  CONSTRAINT pk_id PRIMARY KEY (employee_id));

---------------------------------------------------
-- education
---------------------------------------------------
  CREATE TABLE education(
  education_num INT(3),
  employee_id INT(6),
  degree VARCHAR(30),
  graduation_year INT(4),
  salary_level INT(2),
  CONSTRAINT pk_education PRIMARY KEY (education_id),
  FOREIGN KEY (employee_id)
        REFERENCES employee(employee_id)
  );

----------------------------------------------------
-- work location
----------------------------------------------------
  CREATE TABLE work_location(
  work_location_num INT,
  location_id INT(3),
  quadrant_location VARCHAR2(25),
  number_of_employees INT,
  city VARCHAR2(25),
  state VARCHAR2(25),
  CONSTRAINT pk_location PRIMARY KEY (location_Id)
  );

---------------------------------------------------
-- department
---------------------------------------------------
  CREATE TABLE department(
  department_num INT(3),
  department_id VARCHAR(7),
  department_name VARCHAR2(30),
  CONSTRAINT pk_department PRIMARY KEY (department_id)
  );

-------------------------------------------------
-- work department Bridge
-------------------------------------------------
  CREATE TABLE work_department(
  location_id INT(3),
  department_id VARCHAR(7),
  department_name VARCHAR2(30),
  CONSTRAINT pk_departmentProject PRIMARY KEY (location_Id,department_id),
  FOREIGN KEY (location_Id)
        REFERENCES work_location(location_Id),
  FOREIGN KEY (department_id)
        REFERENCES Department(department_id)
  );

--------------------------------------------------
-- project
--------------------------------------------------
  CREATE TABLE project(
  project_num INT(3),
  project_id VARCHAR(6),
  project_name VARCHAR2(50),
  project_description VARCHAR2(200),
  CONSTRAINT pk_project PRIMARY KEY (project_id)
  );

-------------------------------------------------
-- department project Bridge
-------------------------------------------------
  CREATE TABLE department_project(
  project_id VARCHAR(6),
  department_id VARCHAR(7),
  CONSTRAINT pk_departmentProject PRIMARY KEY (department_id,project_id),
  FOREIGN KEY (department_id)
        REFERENCES Department(department_id),
  FOREIGN KEY (project_id)
        REFERENCES project(project_id)
  );

---------------------------------------------------
-- account details
---------------------------------------------------
  
  CREATE TABLE account_details(
  account_num INT(3),
  account_id INT,
  employee_id INT(6)
  bank_name VARCHAR(50),
  account_number INT(50),
  routing_number INT(30)
  payroll_id INT(3),
  CONSTRAINT pk_account_id PRIMARY KEY (account_id),
  FOREIGN KEY (employee_id)
        REFERENCES employee(employee_id),
  FOREIGN KEY (payroll_id)
        REFERENCES payroll(payroll_id)      
  );

----------------------------------------------------
-- attendance
----------------------------------------------------
   
  CREATE TABLE attendance(
  attendance_id INT(3),
  employee_id INT(6),
  payroll_week INT(2),
  hours_worked INT(2),
  project_id INT(3),
  FOREIGN KEY (employee_id)
        REFERENCES employee(employee_id),
  FOREIGN KEY (payroll_week)
        REFERENCES project(payroll_week)
  );

-------------------------------------------------
-- payroll
-------------------------------------------------
  CREATE TABLE payroll(
  payroll_id INT(3),
  employee_id INT(6)
  salary_level INT(2),
  hourly_pay DECIMAL(6,2),
  project_id INT(3),
  payroll_week INT(2),
  gross_salary DECIMAL(8,3),
  state_tax FLOAT(4,2),
  federal_tax FLOAT(4,2),
  CONSTRAINT pk_payroll PRIMARY KEY (payroll_Id),
  FOREIGN KEY (employee_id)
        REFERENCES employee(employee_id)
  );

---------------------------------------------------
-- leave
---------------------------------------------------
  
  CREATE TABLE leave(
  leave_id NUMBER,
  employee_id NUMBER,
  leave_date DATE,
  CONSTRAINT pk_leave PRIMARY KEY (leave_id),
  FOREIGN KEY (employee_id)
        REFERENCES employee(employee_id)
  );
    
  