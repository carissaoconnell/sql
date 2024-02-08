DROP TABLE IF EXISTS Branch;
DROP TABLE IF EXISTS Staff;
DROP TABLE IF EXISTS PropertyForRent;
DROP TABLE IF EXISTS Client;
DROP TABLE IF EXISTS PrivateOwner;
DROP TABLE IF EXISTS Viewing;
DROP TABLE IF EXISTS Registration;


CREATE TABLE Branch
(
branchNo VARCHAR(4) NOT NULL,
street VARCHAR(30) NOT NULL,
city VARCHAR(20) NOT NULL,
postcode VARCHAR(9) NOT NULL,
CONSTRAINT branch_PK PRIMARY KEY (branchNo)
);

CREATE TABLE Staff
(
staffNo VARCHAR(25) NOT NULL,
fName VARCHAR(25) NOT NULL,
lName VARCHAR(25) NOT NULL,
position VARCHAR(20) NOT NULL,
gender CHAR(1) NOT NULL,
DOB VARCHAR(9) NOT NULL,
salary INT(6) NOT NULL,
branchNo VARCHAR(4) NOT NULL,
CONSTRAINT staff_PK PRIMARY KEY (staffNo),
CONSTRAINT Staff_Branch_FK FOREIGN KEY (branchNo) REFERENCES Branch(branchNo)
);

CREATE TABLE PropertyForRent
(
propertyNo VARCHAR(8) NOT NULL,
street VARCHAR(25) NOT NULL,
city VARCHAR(15) NOT NULL,
postcode VARCHAR(8) NOT NULL,
propertyType VARCHAR(10) NOT NULL,
rooms INT(3) NOT NULL,
rent INT(4) NOT NULL,
ownerNo VARCHAR(7) NOT NULL,
staffNo VARCHAR(5),
branchNo CHAR(4) NOT NULL,
CONSTRAINT propertyForRent_PK PRIMARY KEY (propertyNo),
CONSTRAINT Property_Owner_FK FOREIGN KEY (ownerNo) REFERENCES PrivateOwner(ownerNo),
CONSTRAINT Property_Staff_FK FOREIGN KEY (staffNo) REFERENCES Staff(staffNo),
CONSTRAINT Property_Branch_FK FOREIGN KEY (branchNo) REFERENCES Branch(branchNo)
);

CREATE TABLE Client
(
clientNo VARCHAR(7) NOT NULL,
fName VARCHAR(15) NOT NULL,
lName VARCHAR(15) NOT NULL,
telNo VARCHAR(13) NOT NULL,
prefType VARCHAR(10) NOT NULL,
maxRent INT(4) NOT NULL,
CONSTRAINT client_PK PRIMARY KEY (clientNo)
);

CREATE TABLE PrivateOwner
(
ownerNo VARCHAR(7) NOT NULL,
fName VARCHAR(15) NOT NULL,
lName VARCHAR(15) NOT NULL,
address VARCHAR(50) NOT NULL,
telNo VARCHAR(13) NOT NULL,
CONSTRAINT privateOwner_PK PRIMARY KEY (ownerNo)
);

CREATE TABLE Viewing
(
clientNo VARCHAR(7) NOT NULL,
propertyNo VARCHAR(8) NOT NULL,
viewDate CHAR NOT NULL,
comments VARCHAR(50),
CONSTRAINT viewing_PK PRIMARY KEY (propertyNo, clientNo),
CONSTRAINT Viewing_Propty_FK FOREIGN KEY (propertyNo) REFERENCES PropertyForRent(propertyNo),
CONSTRAINT Viewing_Client_FK FOREIGN KEY (clientNo) REFERENCES Client(clientNo)
);

CREATE TABLE Registration
(
clientNo VARCHAR(7) NOT NULL,
branchNo CHAR(4) NOT NULL,
staffNo VARCHAR(5) NOT NULL,
dateJoined CHAR NOT NULL,
CONSTRAINT registration_PK PRIMARY KEY (clientNo, branchNo),
CONSTRAINT Regist_Client_FK FOREIGN KEY (clientNo) REFERENCES Client(clientNo),
CONSTRAINT Regist_Branch_FK FOREIGN KEY (branchNo) REFERENCES Branch(branchNo),
CONSTRAINT Regist_Staff_FK FOREIGN KEY (staffNo) REFERENCES Staff(staffNo)
);

INSERT INTO Branch (branchNo, street, city, postcode)
VALUES
('B005', '22 Deer Rd', 'London', 'SW1 4EH'),
('B007', '16 Argyll St', 'Aberdeen', 'AB2 3SU'),
('B003', '163 Main St', 'Glagsow', 'G11 9QX'),
('B004', '32 Manse Rd', 'Bristol', 'BS99 1NZ'),
('B002', '56 Clover Dr', 'London', 'NW10 6EU');

INSERT INTO Staff (staffNo, fName, lName, position, gender, DOB, salary, branchNo)
VALUES
('SL21', 'John', 'White', 'Manager', 'M', '1-Oct-45', 30000, 'B005'),
('SG37', 'Ann', 'Beech', 'Assitant', 'F', '10-Nov-60', 12000, 'B003'),
('SG14', 'David', 'Ford', 'Supervisor', 'M', '24-Mar-58', 18000, 'B003'),
('SA9', 'Mary', 'Howe', 'Assistant', 'F', '19-Feb-70', 9000, 'B007'),
('SG5', 'Susan', 'Brand', 'Manager', 'F', '3-Jun-40', 24000, 'B003'),
('SL41', 'Julie', 'Lee', 'Assitant', 'F', '13-Jun-65', 9000, 'B005');

--insert into propertyForRent table propertyNo, street, city, postcode, propertyType, rooms, rent, ownerNo, staffNo, branchNo
INSERT INTO PropertyForRent VALUES ('PA14', '16 Holhead', 'Aberdeen', 'AB7 5SU', 'House',6, 650, 'CO46', 'SA9', 'B007');
INSERT INTO PropertyForRent VALUES ('PL94', '6 Argyll St', 'London', 'NW2', 'Flat', 4, 400, 'CO87', 'SL41', 'B005');
INSERT INTO PropertyForRent VALUES ('PG4', '6 Lawrence St','Glasgow', 'G11 9QX', 'Flat', 3, 350, 'CO40', NULL, 'B003');
INSERT INTO PropertyForRent VALUES ('PG36', '2 Manor Rd', 'Glasgow', 'G32 4QX', 'Flat', 3, 375, 'CO93', 'SG37', 'B003');
INSERT INTO PropertyForRent VALUES ('PG21', '18 Dale Rd', 'Glasgow', 'G12', 'House',5, 600, 'CO87', 'SG37', 'B003');
INSERT INTO PropertyForRent VALUES ('PG16', '5 Novar Dr', 'Glasgow', 'G12 9AX', 'Flat', 4, 450, 'CO93', 'SG14', 'B003');

--insert into client table clientNo, fName, lName, telNo, prefType, maxRent
INSERT INTO Client VALUES ('CR76', 'John', 'Kay', '0207-774-5632', 'Flat', 425);
INSERT INTO Client VALUES ('CR56', 'Aline','Stewart', '0141-848-1825', 'Flat', 350);
INSERT INTO Client VALUES ('CR74', 'Mike', 'Ritchie', '01475-392178', 'House', 750);
INSERT INTO Client VALUES ('CR62', 'Mary', 'Tregar', '01224-196720', 'Flat', 600);

--insert into privateOwner table ownerNo, fName, lName, address, telNo
INSERT INTO PrivateOwner VALUES ('CO46', 'Joe', 'Keogh', '2 Fergus Dr, Aberdeen AB2 7SX','01224-861212');
INSERT INTO PrivateOwner VALUES ('CO87', 'Carol','Farrel','6 Achray St, Glasgow G32 9DX', '0141-357-7419');
INSERT INTO PrivateOwner VALUES ('CO40', 'Tina', 'Murphy','63 Well St, Glasgow G42', '0141-943-1728');
INSERT INTO PrivateOwner VALUES ('CO93', 'Tony', 'Shaw', '12 Park Pl, Glasgow G4 0QR', '0141-225-7025');

--insert into Viewing table clientNo, propertyNo, viewDate, comments
INSERT INTO Viewing VALUES ('CR56', 'PA14', '24-May-04', 'too small');
INSERT INTO Viewing VALUES ('CR76', 'PG4', '20-Apr-04', 'too remote');
INSERT INTO Viewing VALUES ('CR56', 'PG4', '26-May-04', NULL);
INSERT INTO Viewing VALUES ('CR62', 'PA14', '14-May-04', 'no dining room');
INSERT INTO Viewing VALUES ('CR56', 'PG36', '28-Apr-04', NULL);

--insert into Registration table clientNo, branchNo, staffNo, dateJoined
INSERT INTO Registration VALUES ('CR76', 'B005', 'SL41', '2-Jan-04');
INSERT INTO Registration VALUES ('CR56', 'B003', 'SG37', '11-Apr-03');
INSERT INTO Registration VALUES ('CR74', 'B003', 'SG37', '16-Nov-02');
INSERT INTO Registration VALUES ('CR62', 'B007', 'SA9', '7-Mar-03');
