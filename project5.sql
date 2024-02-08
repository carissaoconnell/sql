DROP TABLE Staff;

CREATE TABLE Staff (
staffNo varchar(5) PRIMARY KEY,
fName varchar(15),
lName varchar(15),
position varchar(15),
sex varchar(1),
dob date,
salary number(7),
branchNo varchar(5) references branch(branchNo)
);

INSERT INTO staff VALUES('SL21','John','White','Manager','M','45-Oct-1',30000,'B005');
INSERT INTO staff VALUES('SG37','Ann','Beech','Assistant','F','60-Nov-10',12000,'B003');
INSERT INTO staff VALUES('SG14','David','Ford','Supervisor','M','58-Mar-24',18000,'B003');
INSERT INTO staff VALUES('SA9','Mary','Howe','Assistant','F','70-Feb-19',9000,'B007');
INSERT INTO staff VALUES('SG5','Susan','Brand','Manager','F','40-Jun-03',24000,'B003');
INSERT INTO staff VALUES('SL41','Julie','Lee','Assistant','F','65-Jun-13',9000,'B005');

--10 new values

INSERT INTO staff VALUES('SL22','Elyse','Bell','Manager','F','55-March-1',32000,'B015');
INSERT INTO staff VALUES('SG38','Ryder','Chan','Assistant','M','65-Jul-15',10000,'B017');
INSERT INTO staff VALUES('SG15','Alana','Perry','Assistant','F','75-Apr-20',13000,'B013');
INSERT INTO staff VALUES('SA8','Hanna','Callahan','Supervisor','F','72-Jun-18',22000,'B014');
INSERT INTO staff VALUES('SG4','Maggie','Duncan','Manager','F','66-Aug-08',34000,'B018');
INSERT INTO staff VALUES('SL40','Lilian','Dawson','Supervisor','F','65-Jun-13',20000,'B020');
INSERT INTO staff VALUES('SL20','Saige','Farmer','Assistant','M','80-Dec-03',8000,'B021');
INSERT INTO staff VALUES('SG36','Kiera','Howell','Assistant','M','76-Oct-19',9000,'B019');
INSERT INTO staff VALUES('SG12','Anastasia','York','Supervisor','F','70-May-14',21000,'B012');
INSERT INTO staff VALUES('SA8','Gavyn','Hubbard','Assistant','M','78-Feb-20',8500,'B016');

--search for emmployees with salaries greater than 11000
SELECT Staff.fName, Staff.lName, Staff.position, Staff.salary, Branch.street, Branch.city, Branch.postalcode
FROM staff
WHERE salary >= 11000;
LEFT JOIN Branch
ON Staff.fName, Staff.lName, Staff.position, Staff.salary = Branch.street, Branch.city, Branch.postalcode


--insert employee to nonexisting branch
insert into staff
values('SL30', 'Elsa', 'Snow', 'Assistant', 'F', '92-Dec-13, 9000, 'B001');