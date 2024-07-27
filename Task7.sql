CREATE DATABASE HOMEWORK8;
USE bharathl;
CREATE TABLE olympics(id int not null,organised_by varchar(20) unique,guest varchar(20),no_of_medals int,team_id int,constraint no_of_medals_chk check(no_of_medals>9));
CREATE TABLE cricket(id int not null,franchaise_name varchar(20)unique,rankings int,stadium_name varchar(20),team_id int,constraint rankinga_chk check(rankings>0));
CREATE TABLE football(id int not null,franchaise_name varchar(20)unique,rankings int,stadium_name varchar(20),team_id int,constraint rankings_chk check(rankings>0));
CREATE TABLE school(id int not null,school_name varchar(20) unique,location varchar(20),no_of_students int,school_id int,constraint no_of_students_chk check(no_of_students>100));

ALTER TABLE olympics add constraint primary key(team_id);
ALTER TABLE olympics add constraint guest_uni unique(guest);

ALTER TABLE cricket add constraint primary key(team_id);
ALTER TABLE cricket add constraint stadium_name_uni unique(stadium_name);

ALTER TABLE football add constraint primary key(team_id);
ALTER TABLE football add constraint stadium_name_uni unique(stadium_name);

ALTER TABLE school add constraint primary key(school_id);
ALTER TABLE school add constraint location_uni unique(location);

SELECT * FROM olympics;

ALTER TABLE olympics modify id int ,drop constraint guest_uni;
ALTER TABLE cricket modify id int,drop constraint stadium_name_uni;
ALTER TABLE football modify id int ,drop constraint stadium_name_uni;
ALTER TABLE school modify id int,drop constraint location_uni;

INSERT INTO olympics values(1,'PARIS','VIRAT',100,101);
INSERT INTO olympics values(2,'TOKYO','RONALDO',99,102);
INSERT INTO olympics values(3,'CHINA','MESSI',98,103);
INSERT INTO olympics values(4,'USA','OBAMA',95,104);
INSERT INTO olympics values(5,'FRANCE','MODI',97,105);
SELECT * FROM cricket;
INSERT INTO cricket values(1,'RCB',5,'MCHINNASWAMY',101);
INSERT INTO cricket values(2,'LSG',4,'MCG',102);
INSERT INTO cricket values(3,'CSK',3,'CHIDAMBARUM',103);
INSERT INTO cricket values(4,'MI',4,'WANKADE',104);
INSERT INTO cricket values(5,'DC',3,'ARUNJETLY',105);

SELECT * FROM football;
INSERT INTO football values(1,'BFC',5,'KANTERAVA',201);
INSERT INTO football values(2,'KFC',5,'KEARLA',202);
INSERT INTO football values(3,'GFC',4,'GOA',203);
INSERT INTO football values(4,'DFC',4,'DELHI',204);
INSERT INTO football values(5,'MFC',5,'ARUNJETLY',205);

SELECT * FROM school;
INSERT INTO school values(1,'STMARYS','HOLEHONNUR',800,301);
INSERT INTO school values(2,'JNANADEEPA','JAVALLI',2000,302);
INSERT INTO school values(3,'PES','SHIVAMOGGA',400,303);
INSERT INTO school values(4,'KIDZEE','BENGALURU',120,304);
INSERT INTO school values(5,'NAVODAYA','GAJNUR',1000,305);

ALTER TABLE olympics add constraint id_uni unique(id);
ALTER TABLE cricket add constraint id_uni unique(id);
ALTER TABLE football add constraint id_uni unique(id);
ALTER TABLE school add constraint id_uni unique(id);

ALTER TABLE olympics modify id int ,drop constraint id_uni;
ALTER TABLE cricket modify id int,drop constraint id_uni;
ALTER TABLE football modify id int ,drop constraint id_uni;
ALTER TABLE school modify id int,drop constraint id_uni;
 DESC school;














