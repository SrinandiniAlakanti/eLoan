CREATE DATABASE eloan;

USE eloan;


CREATE TABLE user(
name VARCHAR(20) not null,
userid VARCHAR(15) PRIMARY KEY,
password VARCHAR(15) not null,
contactno VARCHAR(10) not null,
email VARCHAR(30) not null
);

CREATE TABLE loaninfo(
userid VARCHAR(20),
applno VARCHAR(20) PRIMARY KEY,
loandesc VARCHAR(100) not null,
appldate DATE not null,,
amtrequested DOUBLE not null,
bstructure VARCHAR(15) not null,
billingind VARCHAR(15) not null,
taxind  VARCHAR(15) not null,
address VARCHAR(100) not null,
email VARCHAR(25) not null,
mobile VARCHAR(10) not null,
loanstatus VARCHAR(20) not null,
);

CREATE TABLE approveloan(
applno VARCHAR(20) PRIMARY KEY,
sanctionedamount DOUBLE,
rateofintrest int,
tenure INT,
paymentstartdate DATE,
loanclosuredate DATE,
emi DOUBLE,
termpymtamt DOUBLE
);
