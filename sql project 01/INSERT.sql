INSERT INTO employee VALUES (001,100101,'Cora','Jackson','jackson.cora@gmail.com',5181234567,to_date('14-APR-16', 'dd-MON-yyyy'),'Software Engineer','dept002','New York City','New York',201,100101);
INSERT INTO employee VALUES (002,100102,'William','King','king.william@yahoo.com',3391234567,to_date('21-JUN-18', 'dd-MON-yyyy'),'Cybersecurity Expert','dept004','Boston','Massachusetts',202,100102);
INSERT INTO employee VALUES (003,100103,'Eleanor','Morris','morris.eleanor@hotmail.com',2171234567,to_date('13-SEP-19', 'dd-MON-yyyy'),'Project Manager','dept006','Chicago','Illinois',203,100103);
INSERT INTO employee VALUES (004,100104,'Lavinia','Scott','scott.lavinia@gmail.com',6561234567,to_date('12-APR-11', 'dd-MON-yyyy'),'Quality Assurance Engineer','dept002','Miami','Florida',204,100104);
INSERT INTO employee VALUES (005,100105,'Adelaide','Brooks','brooks.adelaide@yahoo.com',7701234567,to_date('16-AUG-17', 'dd-MON-yyyy'),'Business Intelligence Analyst','dept005','Atlanta','Georgia',205,100105);
INSERT INTO employee VALUES (006,100106,'Thomas','Cole','cole.thomas@hotmail.com',4151234567,to_date('25-JUL-18', 'dd-MON-yyyy'),'UI/UX Designer','dept007','San Mateo','California',206,100106);
INSERT INTO employee VALUES (007,100107,'Sophia','Turner','turner.sophia@gmail.com',8311234567,to_date('18-DEC-10', 'dd-MON-yyyy'),'Data Scientist','dept003','San Francisco','California',207,100107);
INSERT INTO employee VALUES (008,100108,'Peter','Robinson','robinson.peter@yahoo.com',2061234567,to_date('27-NOV-15', 'dd-MON-yyyy'),'Full-Stack Developer','dept002','Seattle','Washington',208,100108);
INSERT INTO employee VALUES (009,100109,'Benjamin','Hughes','hughes.benjamin@gmail.com',9781234567,to_date('24-APR-16', 'dd-MON-yyyy'),'IT Coordinator','dept004','Boston','Massachusetts',202,100109);
INSERT INTO employee VALUES (010,100110,'David','Adams','adams.david@hotmail.com',8051234567,to_date('21-MAY-14', 'dd-MON-yyyy'),'Accountant','dept008','San Francisco','California',207,100110);

INSERT INTO education VALUES (001,100101,'MS',2017,04);
INSERT INTO education VALUES (002,100102,'MS',2019,04);
INSERT INTO education VALUES (003,100103,'MS',2011,04);
INSERT INTO education VALUES (004,100104,'MS',2015,04);
INSERT INTO education VALUES (005,100105,'PH.D',2013,03);
INSERT INTO education VALUES (006,100106,'Bachelor',2020,02);
INSERT INTO education VALUES (007,100107,'Bachelor',2021,02);
INSERT INTO education VALUES (008,100108,'Bachelor',2022,02);
INSERT INTO education VALUES (009,100109,'Bachelor',2020,02);
INSERT INTO education VALUES (010,100110,'MS',2007,03);

INSERT INTO work_location VALUES (001,201,'NORTHEAST',4,'New York City','New York',101);
INSERT INTO work_location VALUES (002,202,'NORTHEAST',3,'Boston','Massachusetts',102);
INSERT INTO work_location VALUES (003,203,'MIDWEST',6,'Chicago','Illinois',103);
INSERT INTO work_location VALUES (004,204,'SOUTHEAST',5,'Miami','Florida',104);
INSERT INTO work_location VALUES (005,205,'SOUTHEAST',8,'Atlanta','Georgia',105);
INSERT INTO work_location VALUES (006,206,'WEST',3,'San Mateo','California',106);
INSERT INTO work_location VALUES (007,207,'WEST',2,'San Francisco','California',107);
INSERT INTO work_location VALUES (008,208,'WEST',9,'Seattle','Washington',108);
INSERT INTO work_location VALUES (009,209,'SOUTHWEST',10,'Austin','Texas',109);
INSERT INTO work_location VALUES (010,210,'SOUTHWEST',12,'San Antonio','Texas',110);

INSERT INTO department VALUES (001,'dept001','Human Resources');
INSERT INTO department VALUES (002,'dept002','Software Development');
INSERT INTO department VALUES (003,'dept003','Data Science');
INSERT INTO department VALUES (004,'dept004','Information Security');
INSERT INTO department VALUES (005,'dept005','Business Intelligence');
INSERT INTO department VALUES (006,'dept006','Marketing');
INSERT INTO department VALUES (007,'dept007','UI/UX');
INSERT INTO department VALUES (008,'dept008','Accounting');

INSERT INTO work_department VALUES (201,'dept001','Human Resources');
INSERT INTO work_department VALUES (202,'dept002','Software Development');
INSERT INTO work_department VALUES (203,'dept003','Data Science');
INSERT INTO work_department VALUES (204,'dept004','Information Security');
INSERT INTO work_department VALUES (205,'dept005','Business Intelligence');
INSERT INTO work_department VALUES (206,'dept006','Marketing');
INSERT INTO work_department VALUES (207,'dept007','UI/UX');
INSERT INTO work_department VALUES (208,'dept008','Accounting');
INSERT INTO work_department VALUES (209,'dept002','Software Development');
INSERT INTO work_department VALUES (210,'dept005','Business Intelligence');

INSERT INTO project VALUES (001,'proj01','Constellations App','Design stargazing app for watch os');
INSERT INTO project VALUES (002,'proj02','RX Tracker App','Create notifications when rx should be taken');
INSERT INTO project VALUES (003,'proj03','Cooking Website','Implement Javascript');
INSERT INTO project VALUES (004,'proj01','Nature Travel Website','Propose a layout');
INSERT INTO project VALUES (005,'proj04','Dog Breeds Website','Create database for dog breeds');
INSERT INTO project VALUES (006,'proj05','Bank App','Create notification to notify user of unauthroized transaction');

INSERT INTO department_project VALUES ('proj01','dept002');
INSERT INTO department_project VALUES ('proj02','dept002');
INSERT INTO department_project VALUES ('proj03','dept006');
INSERT INTO department_project VALUES ('proj04','dept007');
INSERT INTO department_project VALUES ('proj05','dept005');

INSERT INTO account_details VALUES (001,100101,'Wells Fargo','123456','026009593',101);
INSERT INTO account_details VALUES (002,100102,'Wells Fargo','123457','026009593',102);
INSERT INTO account_details VALUES (003,100103,'Wells Fargo','123458','026009593',103);
INSERT INTO account_details VALUES (004,100104,'Wells Fargo','123459','026009593',104);
INSERT INTO account_details VALUES (005,100105,'Chase','123412','267084199',105);
INSERT INTO account_details VALUES (006,100106,'Chase','123413','267084199',106);
INSERT INTO account_details VALUES (007,100107,'Chase','123414','267084199',107);
INSERT INTO account_details VALUES (008,100108,'Chase','123415','267084199',108);
INSERT INTO account_details VALUES (009,100109,'Citibank','123416','267084131',109);
INSERT INTO account_details VALUES (010,100110,'Citibank','123417','267084131',110);

INSERT INTO attendance VALUES (001,100101,20,35,201);
INSERT INTO attendance VALUES (002,100102,20,40,null);
INSERT INTO attendance VALUES (003,100103,20,36,202);
INSERT INTO attendance VALUES (004,100104,20,38,203);
INSERT INTO attendance VALUES (005,100105,20,37,204);
INSERT INTO attendance VALUES (006,100106,20,39,204);
INSERT INTO attendance VALUES (007,100107,20,40,205);
INSERT INTO attendance VALUES (008,100108,20,46,206);
INSERT INTO attendance VALUES (001,100109,20,37,null);
INSERT INTO attendance VALUES (010,100110,20,40,null);

INSERT INTO payroll VALUES (001,100101,04,50,201,20,96000,15.3,11.7);
INSERT INTO payroll VALUES (002,100102,04,55,null,20,105000,5.5,11.7);
INSERT INTO payroll VALUES (003,100103,04,48,203,20,92160,7.9,11.7);
INSERT INTO payroll VALUES (004,100104,04,51,204,20,97920,0.0,11.7);
INSERT INTO payroll VALUES (005,100105,03,57,205,20,109440,2.4,11.7);
INSERT INTO payroll VALUES (006,100106,05,47,206,20,90240,8.9,11.7);
INSERT INTO payroll VALUES (007,100107,05,45,201,20,86400,3.8,11.7);
INSERT INTO payroll VALUES (008,100108,05,46,202,20,88320,5.2,11.7);
INSERT INTO payroll VALUES (009,100109,05,44,null,20,84480,1.4,11.7);
INSERT INTO payroll VALUES (010,100110,03,56,null,20,107520,0.9,11.7);

INSERT INTO leave VALUES (001,100101,to_date('1-NOV-24','dd-MON-yyyy'));
INSERT INTO leave VALUES (002,100102,to_date('2-AUG-22','dd-MON-yyyy'));
INSERT INTO leave VALUES (003,100103,to_date('3-FEB-25','dd-MON-yyyy'));
INSERT INTO leave VALUES (004,100104,to_date('4-SEPT-23','dd-MON-yyyy'));
INSERT INTO leave VALUES (005,100105,to_date('5-OCT-21','dd-MON-yyyy'));
INSERT INTO leave VALUES (006,100106,to_date('6-JAN-23','dd-MON-yyyy'));
INSERT INTO leave VALUES (007,100107,to_date('7-JUN-22','dd-MON-yyyy'));
INSERT INTO leave VALUES (008,100108,to_date('7-FEB-24','dd-MON-yyyy'));
INSERT INTO leave VALUES (009,100109,to_date('8-JULY-25','dd-MON-yyyy'));
INSERT INTO leave VALUES (010,100110,to_date('9-MAY-21','dd-MON-yyyy'));

