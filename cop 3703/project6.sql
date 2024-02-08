--Carissa Lee O'Connell
--Project 6 - PL/SQL Anonymous Block

set serveroutput on
DECLARE
  -- Declare the required types and variables
  TYPE NameArray IS VARRAY(10) OF emp.ename%TYPE; --declare size of names array
  TYPE SalaryArray IS VARRAY(10) OF emp.sal%TYPE; --declare size of salaries array
  names NameArray; --declare array for names
  salaries SalaryArray; --declare array for salaries
  counter NUMBER := 1; -- Counter variable as an index

BEGIN
  -- Loop to retrieve the first 10 "ename" and "sal" values
  FOR emp_record IN (
    SELECT ename, sal --select the names and salaries in the table
    FROM emp --from table emp
    WHERE ROWNUM <= 10 --rows 10 and less
  ) LOOP 
    names(counter) := emp_record.ename; -- Store name in the name array
    salaries(counter) := emp_record.sal; -- Store salary in the salary array
    counter := counter + 1; -- Increment the counter
  END LOOP;

  -- Loop to display "ename" and "sal" information in reverse order
  FOR i IN REVERSE 1..counter-1 --lower_bound is 1 and upper_bound is the incremented counter - 1
  LOOP
    DBMS_OUTPUT.PUT_LINE('Name: ' || names(i) || ', Salary: ' || salaries(i)); --print out the names and salaries from array 
  END LOOP;

END;
