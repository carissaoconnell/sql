--Project12
--Carissa Lee O'Connell

CREATE USER user40 
IDENTIFIED BY 'user40'
DEFAULT TABLESPACE DATA01
TEMPORARY TABLESPACE TEMP
QUOTA UNLIMITED ON DATA01;

CREATE USER user41 
IDENTIFIED BY 'user41'
DEFAULT TABLESPACE DATA01
TEMPORARY TABLESPACE TEMP
QUOTA UNLIMITED ON DATA01;

CREATE USER user42 
IDENTIFIED BY 'user42'
DEFAULT TABLESPACE DATA01
TEMPORARY TABLESPACE TEMP
QUOTA UNLIMITED ON DATA01;

CREATE USER user43 
IDENTIFIED BY 'user43'
DEFAULT TABLESPACE DATA01
TEMPORARY TABLESPACE TEMP
QUOTA UNLIMITED ON DATA01;

CREATE USER user44 
IDENTIFIED BY 'user44'
DEFAULT TABLESPACE DATA01
TEMPORARY TABLESPACE TEMP
QUOTA UNLIMITED ON DATA01;

CREATE USER user45 
IDENTIFIED BY 'user45'
DEFAULT TABLESPACE DATA01
TEMPORARY TABLESPACE TEMP
QUOTA UNLIMITED ON DATA01;

CREATE USER user46 
IDENTIFIED BY 'user46'
DEFAULT TABLESPACE DATA01
TEMPORARY TABLESPACE TEMP
QUOTA UNLIMITED ON DATA01;

CREATE USER user47 
IDENTIFIED BY 'user47'
DEFAULT TABLESPACE DATA01
TEMPORARY TABLESPACE TEMP
QUOTA UNLIMITED ON DATA01;

CREATE USER user48 
IDENTIFIED BY 'user48'
DEFAULT TABLESPACE DATA01
TEMPORARY TABLESPACE TEMP
QUOTA UNLIMITED ON DATA01;

CREATE USER user49 
IDENTIFIED BY 'user49'
DEFAULT TABLESPACE DATA01
TEMPORARY TABLESPACE TEMP
QUOTA UNLIMITED ON DATA01;

CREATE USER user50 
IDENTIFIED BY 'user50'
DEFAULT TABLESPACE DATA01
TEMPORARY TABLESPACE TEMP
QUOTA UNLIMITED ON DATA01;

GRANT CREATE SESSION TO user40, user40, user41, user42, user43, user44, user45, user46, user47, user48, user49, user50;

alter user user40, user41, user42, user43, user44, user45, user46, user47, user48, user49, user50 
quota unlimited on users;
grant create view, create table, create procedure, create sequence to user40, user41, user42, user43, user44,
user45, user46, user47, user48, user49, user50;

CREATE TABLE user40.myusertable(
userid NUMBER(10),
firstname VARCHAR(50),
lastname VARCHAR(50),
age NUMBER(3)
);

GRANT SELECT ON user40.myusertable TO user50;

SELECT * FROM user40.myusertable;