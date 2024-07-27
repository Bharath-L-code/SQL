use bharath;
CREATE TABLE movie_info (movie_id VARCHAR(255),title VARCHAR(255),
    genre VARCHAR(255),release_year VARCHAR(255),is_active VARCHAR(255));

CREATE TABLE bank_details (account_id VARCHAR(255),account_holder VARCHAR(255),
    bank_name VARCHAR(255),account_type VARCHAR(255),is_active VARCHAR(255));

ALTER TABLE movie_info
ADD duration INT,ADD rating INT,ADD budget BIGINT,
ADD box_office BIGINT,ADD is_awarded BOOLEAN;

ALTER TABLE bank_details
ADD balance BIGINT,ADD interest_rate BIGINT,ADD branch_code INT,
ADD account_number INT,ADD is_verified BOOLEAN;

ALTER TABLE movie_info
RENAME COLUMN title TO movie_title,
RENAME COLUMN genre TO movie_genre,
RENAME COLUMN release_year TO year_of_release,
RENAME COLUMN duration TO movie_duration,
RENAME COLUMN rating TO movie_rating;

ALTER TABLE bank_details
RENAME COLUMN account_holder TO holder_name,
RENAME COLUMN bank_name TO bank,
RENAME COLUMN account_type TO type_of_account,
RENAME COLUMN branch_code TO branch,
RENAME COLUMN balance TO account_balance;

INSERT INTO movie_info (movie_id, movie_title, movie_genre, year_of_release, is_active, movie_duration, movie_rating, budget, box_office, is_awarded)
VALUES 
('1', 'Dangal', 'Sports', '2016', 'TRUE', 161, 8, 70000000, 2000000000, TRUE),
('2', 'Baahubali: The Beginning', 'Action', '2015', 'TRUE', 159, 8, 180000000, 650000000, TRUE),
('3', '3 Idiots', 'Comedy', '2009', 'TRUE', 170, 9, 55000000, 460000000, TRUE),
('4', 'PK', 'Comedy', '2014', 'TRUE', 152, 8, 85000000, 854000000, TRUE),
('5', 'Bajrangi Bhaijaan', 'Drama', '2015', 'TRUE', 163, 8, 90000000, 969000000, TRUE),
('6', 'Chennai Express', 'Comedy', '2013', 'TRUE', 141, 7, 75000000, 423000000, TRUE),
('7', 'Kabir Singh', 'Drama', '2019', 'TRUE', 172, 7, 68000000, 379000000, TRUE),
('8', 'Sanju', 'Biography', '2018', 'TRUE', 161, 8, 100000000, 586000000, TRUE),
('9', 'Sultan', 'Sports', '2016', 'TRUE', 170, 7, 90000000, 623000000, TRUE),
('10', 'Padmaavat', 'Drama', '2018', 'TRUE', 164, 7, 215000000, 585000000, TRUE);

INSERT INTO bank_details (account_id, holder_name, bank, type_of_account, is_active, account_balance, interest_rate, branch, account_number, is_verified)
VALUES 
('1', 'Amit Kumar', 'State Bank of India', 'Savings', 'TRUE', 500000, 4, 101, 123456, TRUE),
('2', 'Neha Gupta', 'ICICI Bank', 'Checking', 'TRUE', 1000000, 5, 102, 654321, TRUE),
('3', 'Rahul Verma', 'HDFC Bank', 'Savings', 'TRUE', 750000, 4, 103, 112233, TRUE),
('4', 'Priya Singh', 'Axis Bank', 'Checking', 'TRUE', 2000000, 5, 104, 445566, TRUE),
('5', 'Ravi Sharma', 'Punjab National Bank', 'Savings', 'TRUE', 850000, 4, 105, 223344, TRUE),
('6', 'Kiran Mehta', 'Kotak Mahindra Bank', 'Checking', 'TRUE', 300000, 5, 106, 556677, TRUE),
('7', 'Suman Joshi', 'Bank of Baroda', 'Savings', 'TRUE', 600000, 4, 107, 334455, TRUE),
('8', 'Vikram Rao', 'Union Bank of India', 'Checking', 'TRUE', 900000, 5, 108, 778899, TRUE),
('9', 'Pooja Desai', 'Yes Bank', 'Savings', 'TRUE', 450000, 4, 109, 998877, TRUE),
('10', 'Anil Kumble', 'Canara Bank', 'Checking', 'TRUE', 1200000, 5, 110, 667788, TRUE);

UPDATE movie_info SET movie_rating = 9 WHERE movie_id = '1';
UPDATE movie_info SET budget = 230000000 WHERE movie_id = '4';
UPDATE movie_info SET movie_genre = 'Thriller' WHERE movie_id = '7';
UPDATE movie_info SET year_of_release = '2020' WHERE movie_id = '10';
UPDATE bank_details SET account_balance = 1600000 WHERE account_id = '1';
UPDATE bank_details SET holder_name = 'Neha Sharma' WHERE account_id = '2';
UPDATE bank_details SET bank = 'HDFC Bank' WHERE account_id = '3';
UPDATE bank_details SET type_of_account = 'Business' WHERE account_id = '4';
UPDATE bank_details SET is_verified = FALSE WHERE account_id = '5';

DELETE FROM movie_info WHERE movie_id = '3';
DELETE FROM movie_info WHERE movie_id = '6';
DELETE FROM movie_info WHERE movie_id = '9';
DELETE FROM bank_details WHERE account_id = '7';
DELETE FROM bank_details WHERE account_id = '8';
DELETE FROM bank_details WHERE account_id = '9';

SELECT * FROM movie_info WHERE movie_genre = 'Sports';
SELECT * FROM bank_details WHERE bank = 'State Bank of India' AND is_active = 'TRUE';
SELECT * FROM movie_info WHERE year_of_release > '2010' OR budget > 100000000;
SELECT * FROM bank_details WHERE account_id IN ('1', '2', '3');
SELECT * FROM movie_info WHERE movie_genre NOT IN ('Drama', 'Romance');