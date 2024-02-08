SELECT eName, empNo, job, mgr, hireDate, sal, comm, deptNo
FROM emp e 
ORDER BY e.deptNo;


SELECT eName, hireDate, salary
FROM emp
WHERE empNo
IN (SELECT manager FROM emp);


SELECT eName, hireDate, salary
FROM emp
WHERE deptNo
IN (SELECT deptNo FROM dept WHERE dName = 'Sales');


SELECT mgr, (SELECT eName FROM emp WHERE mgr=mgr) AS manager ename, COUNT(empNo) 
FROM emp 
GROUP BY mgr;


SELECT Name as customerName, custID, creditLimit 
FROM customer 
ORDER BY custId;
