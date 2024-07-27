use bharath;
CREATE TABLE employee_details (emp_id INT ,first_name VARCHAR(50),
  last_name VARCHAR(50),email VARCHAR(100),phone_number VARCHAR(15));


CREATE TABLE airport_details (airport_id INT,airport_name VARCHAR(100),
   location VARCHAR(100),code VARCHAR(10),country VARCHAR(50));
   drop table airport_details;
   

ALTER TABLE employee_details
ADD COLUMN address VARCHAR(255),
ADD COLUMN birth_date DATE,
ADD COLUMN hire_date DATE,
ADD COLUMN salary DECIMAL(10, 2),
ADD COLUMN department_id INT;

ALTER TABLE airport_details
ADD COLUMN capacity INT,
ADD COLUMN established_year YEAR,
ADD COLUMN runways INT,
ADD COLUMN terminal_count INT,
ADD COLUMN airport_manager VARCHAR(100);


ALTER TABLE employee_details
DROP COLUMN phone_number,
DROP COLUMN hire_date;

ALTER TABLE airport_details
DROP COLUMN terminal_count,
DROP COLUMN airport_manager;


ALTER TABLE employee_details
CHANGE COLUMN emp_id employee_id INT,
CHANGE COLUMN first_name given_name VARCHAR(50),
CHANGE COLUMN last_name surname VARCHAR(50),
CHANGE COLUMN email email_address VARCHAR(100),
CHANGE COLUMN address home_address VARCHAR(255);

ALTER TABLE airport_details
CHANGE COLUMN airport_id id INT,
CHANGE COLUMN airport_name name VARCHAR(100),
CHANGE COLUMN location city VARCHAR(100),
CHANGE COLUMN code iata_code VARCHAR(10),
CHANGE COLUMN country nation VARCHAR(50);

ALTER TABLE employee_details
MODIFY COLUMN employee_id BIGINT,
MODIFY COLUMN given_name VARCHAR(100),
MODIFY COLUMN surname VARCHAR(100),
MODIFY COLUMN salary DECIMAL(15, 2),
MODIFY COLUMN department_id BIGINT;

ALTER TABLE airport_details
MODIFY COLUMN id BIGINT,
MODIFY COLUMN name VARCHAR(150),
MODIFY COLUMN city VARCHAR(150),
MODIFY COLUMN iata_code CHAR(3),
MODIFY COLUMN nation VARCHAR(100);


ALTER TABLE employee_details
DROP COLUMN birth_date;
select*from employee_details;
ALTER TABLE employee_details
DROP COLUMN emp_id;
select*from employee_details;

drop table employee_details;

ALTER TABLE airport_details
DROP COLUMN established_year;
select*from airport_details;

select * from employee_details;

insert into employee_details values ( 1,'Kam','lesh','kam@gmail.com',12345678);
insert into employee_details values ( 2,'Bhar','rath','Bhar@gmail.com',12345458);
insert into employee_details values ( 3,'Kir','an','kir@gmail.com',12343578);
insert into employee_details values ( 4,'che','than','che@gmail.com',12465678);
insert into employee_details values ( 5,'ash','rith','ash@gmail.com',11255678);
insert into employee_details values ( 6,'Vir','at','vir@gmail.com',12347678);
insert into employee_details values ( 7,'roh','it','roh@gmail.com',12343278);
insert into employee_details values ( 8,'bum','rah','bum@gmail.com',12398678);
insert into employee_details values ( 9,'sur','ya','sur@gmail.com',12342378);
insert into employee_details values ( 10,'raj','at','raj@gmail.com',12345678);
insert into employee_details values ( 11,'har','dik','har@gmail.com',12235678);
insert into employee_details values ( 12,'arsh','deep','arsh@gmail.com',13445678);
insert into employee_details values ( 13,'ab','d','ab@gmail.com',12345658);
insert into employee_details values ( 14,'chris','gayle','chris@gmail.com',22345678);

select * from employee_details where emp_id=3;