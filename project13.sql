--Project13
--Carissa Lee O'Connell
sqlplus / as sysdba
connect scott/tiger

COMMIT;
BEGIN TRANSACTION T1;
SET TRANSACTION T1;
SELECT e.empno, e.ename, e.sal from EMP e;
INSERT INTO emp VALUES(7777, 'HANNAH', 'ANALYST', null,to_date('15-Jan-2016','dd-mon-yyyy'),3000, null, 30);
INSERT INTO emp VALUES(7770, 'SARI', 'MANAGER', 7698, to_date('20-Feb-2015','dd-mon-yyyy'),4000, null, 20);
INSERT INTO emp VALUES(7500, 'KIARA', 'CLERK', null, to_date('10-Mar-2017','dd-mon-yyyy'),3500, null, 10);
INSERT INTO emp VALUES(7800, 'JENNY', 'CLERK', 7839, to_date('25-Dec-2018','dd-mon-yyyy'),4500, null, 20);
SAVEPOINT original;
SELECT e.empno, e.ename, e.sal from EMP e;
ROLLBACK TRANSACTION T1;
SELECT e.empno, e.ename, e.sal from EMP e;
COMMIT;


