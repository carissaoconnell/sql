DROP TABLE Branch;

CREATE TABLE Branch(
branchNo varchar(5) PRIMARY KEY,
street varchar(50),
city varchar(30),
postcode varchar(8));

INSERT INTO Branch (branchNo, street, city, postcode) 
VALUES ('B0005', '22 Deer Rd', 'London', 'SW1 4EH');

INSERT INTO Branch (branchNo, street, city, postcode) 
VALUES ('B007', '16 Argyll St', 'Aberdeen', 'AB2 3SU');

INSERT INTO  Branch (branchNo, street, city, postcode) 
VALUES ('B003', '163 Main St', 'Glasgow', 'G11 9QX');

INSERT INTO Branch (branchNo, street, city, postcode) 
VALUES ('B004', '32 Manse Rd', 'Bristol', 'BS99 1NZ');

INSERT INTO Branch (branchNo, street, city, postcode) 
VALUES ('B002', '56 Clover Dr', 'London', 'NW10 6EU');


--10 values to be inserted

INSERT INTO Branch (branchNo, street, city, postcode) 
VALUES ('B015', '15 Stone Cellar Road', 'Kingswood', 'BS15 9YL');

INSERT INTO Branch (branchNo, street, city, postcode) 
VALUES ('B017', '3 Davids Lane', 'Stronenaba', 'PH34 9JH');

INSERT INTO Branch (branchNo, street, city, postcode) 
VALUES ('B013', '57 Station Rd', 'Puriton', 'TA7 1JE');

INSERT INTO Branch (branchNo, street, city, postcode) 
VALUES ('B014', '95 Guildford Rd', 'East Lutton', 'YO17 3HR');

INSERT INTO Branch (branchNo, street, city, postcode) 
VALUES ('B016', '47 Prince Consort Road', 'Kenfig', 'CF33 0NF');

INSERT INTO Branch (branchNo, street, city, postcode) 
VALUES ('B018', '20 Fore St', 'Treverva', 'TR11 3ZG');

INSERT INTO Branch (branchNo, street, city, postcode) 
VALUES ('B020', '45 Horsefair Green', 'Oldstead', 'YO6 1LE');

INSERT INTO Branch (branchNo, street, city, postcode) 
VALUES ('B021', '95 Fulford Road', 'Pentre', 'SY4 8BR');

INSERT INTO Branch (branchNo, street, city, postcode) 
VALUES ('B019', '78 Caxton Place', 'Buttermere', 'SN8 3JL');

INSERT INTO Branch (branchNo, street, city, postcode) 
VALUES ('B012', '79 Carriers Road', 'Croasdale', 'CA23 9UG');