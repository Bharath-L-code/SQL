use bharath;

CREATE TABLE state_info (id INT,state_name VARCHAR(50),population INT,area INT,capital VARCHAR(50),
    governor VARCHAR(50),chief_minister VARCHAR(50),literacy_rate VARCHAR(20),gdp VARCHAR(20),established_year INT);

CREATE TABLE scam_info (id INT,scam_name VARCHAR(50),year INT,amount VARCHAR(20),location VARCHAR(50),
    involved_persons VARCHAR(100),scam_type VARCHAR(50),investigation_status VARCHAR(50),legal_action VARCHAR(50),remarks VARCHAR(100));


ALTER TABLE state_info
ADD COLUMN district_count INT,
ADD COLUMN official_language VARCHAR(50),
ADD COLUMN region VARCHAR(50),
ADD COLUMN timezone VARCHAR(50),
ADD COLUMN tourism_rating INT;

ALTER TABLE scam_info
ADD COLUMN media_coverage VARCHAR(100),
ADD COLUMN whistleblower VARCHAR(50),
ADD COLUMN political_influence VARCHAR(50),
ADD COLUMN public_reaction VARCHAR(100),
ADD COLUMN economic_impact VARCHAR(100);


ALTER TABLE state_info
RENAME COLUMN state_name TO state_full_name,
RENAME COLUMN population TO total_population,
RENAME COLUMN area TO total_area,
RENAME COLUMN literacy_rate TO literacy_percentage,
RENAME COLUMN gdp TO gdp_value;

ALTER TABLE scam_info
RENAME COLUMN scam_name TO scam_title,
RENAME COLUMN year TO scam_year,
RENAME COLUMN amount TO scam_amount,
RENAME COLUMN location TO scam_location,
RENAME COLUMN remarks TO scam_remarks;

ALTER TABLE state_info
MODIFY COLUMN state_full_name VARCHAR(100),
MODIFY COLUMN capital VARCHAR(100),
MODIFY COLUMN governor VARCHAR(100),
MODIFY COLUMN chief_minister VARCHAR(100),
MODIFY COLUMN official_language VARCHAR(100);

ALTER TABLE scam_info
MODIFY COLUMN scam_title VARCHAR(100),
MODIFY COLUMN involved_persons VARCHAR(200),
MODIFY COLUMN scam_type VARCHAR(100),
MODIFY COLUMN investigation_status VARCHAR(100),
MODIFY COLUMN legal_action VARCHAR(100);


INSERT INTO state_info (id, state_full_name, total_population, total_area, capital, governor, chief_minister, literacy_percentage, gdp_value, established_year, district_count, official_language, region, timezone, tourism_rating) VALUES
(1, 'Karnataka', 67562686, 191791, 'Bengaluru', 'Thawar Chand Gehlot', 'Basavaraj Bommai', '75.36%', '250B', 1956, 31, 'Kannada', 'South India', 'GMT+5:30', 5),
(2, 'Maharashtra', 123144223, 307713, 'Mumbai', 'Bhagat Singh Koshyari', 'Eknath Shinde', '82.34%', '400B', 1960, 36, 'Marathi', 'West India', 'GMT+5:30', 5),
(3, 'Tamil Nadu', 72147030, 130058, 'Chennai', 'R. N. Ravi', 'M. K. Stalin', '80.09%', '300B', 1956, 38, 'Tamil', 'South India', 'GMT+5:30', 5),
(4, 'Uttar Pradesh', 237882725, 243286, 'Lucknow', 'Anandiben Patel', 'Yogi Adityanath', '67.68%', '150B', 1950, 75, 'Hindi', 'North India', 'GMT+5:30', 4),
(5, 'West Bengal', 99609303, 88752, 'Kolkata', 'Jagdeep Dhankhar', 'Mamata Banerjee', '77.08%', '210B', 1947, 23, 'Bengali', 'East India', 'GMT+5:30', 5),
(6, 'Kerala', 34571866, 38863, 'Thiruvananthapuram', 'Arif Mohammad Khan', 'Pinarayi Vijayan', '94.00%', '120B', 1956, 14, 'Malayalam', 'South India', 'GMT+5:30', 5),
(7, 'Gujarat', 63902753, 196024, 'Gandhinagar', 'Acharya Devvrat', 'Bhupendrabhai Patel', '78.03%', '250B', 1960, 33, 'Gujarati', 'West India', 'GMT+5:30', 4),
(8, 'Rajasthan', 81032689, 342239, 'Jaipur', 'Kalraj Mishra', 'Ashok Gehlot', '66.11%', '150B', 1949, 33, 'Hindi', 'North India', 'GMT+5:30', 4),
(9, 'Madhya Pradesh', 85358965, 308252, 'Bhopal', 'Mangubhai C. Patel', 'Shivraj Singh Chouhan', '69.32%', '140B', 1956, 52, 'Hindi', 'Central India', 'GMT+5:30', 4),
(10, 'Bihar', 124799926, 94163, 'Patna', 'Phagu Chauhan', 'Nitish Kumar', '63.82%', '100B', 1912, 38, 'Hindi', 'East India', 'GMT+5:30', 3),
(11, 'Punjab', 30141373, 50362, 'Chandigarh', 'Banwarilal Purohit', 'Bhagwant Mann', '75.84%', '110B', 1966, 22, 'Punjabi', 'North India', 'GMT+5:30', 4),
(12, 'Haryana', 28204692, 44212, 'Chandigarh', 'Bandaru Dattatreya', 'Manohar Lal Khattar', '76.64%', '90B', 1966, 22, 'Hindi', 'North India', 'GMT+5:30', 4),
(13, 'Assam', 35607039, 78438, 'Dispur', 'Jagdish Mukhi', 'Himanta Biswa Sarma', '72.19%', '70B', 1947, 33, 'Assamese', 'North-East India', 'GMT+5:30', 4),
(14, 'Jharkhand', 38471771, 79714, 'Ranchi', 'Ramesh Bais', 'Hemant Soren', '66.41%', '60B', 2000, 24, 'Hindi', 'East India', 'GMT+5:30', 4),
(15, 'Chhattisgarh', 29436231, 135192, 'Raipur', 'Anusuiya Uikey', 'Bhupesh Baghel', '70.28%', '65B', 2000, 28, 'Hindi', 'Central India', 'GMT+5:30', 4),
(16, 'Odisha', 46356334, 155707, 'Bhubaneswar', 'Ganeshi Lal', 'Naveen Patnaik', '72.87%', '90B', 1950, 30, 'Odia', 'East India', 'GMT+5:30', 4),
(17, 'Telangana', 39237688, 112077, 'Hyderabad', 'Tamilisai Soundararajan', 'K. Chandrashekar Rao', '66.54%', '140B', 2014, 33, 'Telugu', 'South India', 'GMT+5:30', 4),
(18, 'Andhra Pradesh', 53903393, 162968, 'Amaravati', 'Biswa Bhusan Harichandan', 'Y. S. Jagan Mohan Reddy', '67.35%', '160B', 2014, 13, 'Telugu', 'South India', 'GMT+5:30', 4),
(19, 'Himachal Pradesh', 7302690, 55673, 'Shimla', 'Rajendra Arlekar', 'Jai Ram Thakur', '82.80%', '55B', 1971, 12, 'Hindi', 'North India', 'GMT+5:30', 4),
(20, 'Uttarakhand', 10086292, 53483, 'Dehradun', 'Baby Rani Maurya', 'Pushkar Singh Dhami', '79.63%', '50B', 2000, 13, 'Hindi', 'North India', 'GMT+5:30', 4);

INSERT INTO scam_info (id, scam_title, scam_year, scam_amount, scam_location, involved_persons, scam_type, investigation_status, legal_action, scam_remarks, media_coverage, whistleblower, political_influence, public_reaction, economic_impact) VALUES
(1, '2G Spectrum Scam', 2008, '1.76T', 'India', 'A. Raja, Kanimozhi', 'Telecom', 'Closed', 'Acquittal', 'Major telecom scam', 'Extensive', 'Unnamed', 'High', 'Outrage', 'Severe'),
(2, 'Commonwealth Games Scam', 2010, '70000C', 'Delhi', 'Suresh Kalmadi', 'Sports', 'Ongoing', 'Chargesheet', 'Irregularities in games', 'Extensive', 'Unnamed', 'High', 'Outrage', 'Severe'),
(3, 'Coal Allocation Scam', 2012, '1.86L', 'India', 'Manmohan Singh', 'Coal', 'Closed', 'Acquittal', 'Misallocation of coal blocks', 'Extensive', 'Unnamed', 'High', 'Outrage', 'Severe'),
(4, 'Vyapam Scam', 2013, '2000C', 'Madhya Pradesh', 'Various Officials', 'Education', 'Ongoing', 'Chargesheet', 'Fraudulent exams', 'Extensive', 'Unnamed', 'High', 'Outrage', 'Severe'),
(5, 'Satyam Scam', 2009, '14000C', 'Hyderabad', 'Ramalinga Raju', 'Corporate', 'Closed', 'Conviction', 'Corporate fraud', 'Extensive', 'Whistleblower', 'High', 'Outrage', 'Severe'),
(6, 'Nirav Modi PNB Fraud', 2018, '14000C', 'Mumbai', 'Nirav Modi', 'Banking', 'Ongoing', 'Chargesheet', 'Bank fraud', 'Extensive', 'Unnamed', 'High', 'Outrage', 'Severe'),
(7, 'Chopper Scam', 2013, '3600C', 'India', 'Several Politicians', 'Defence', 'Ongoing', 'Chargesheet', 'Bribery in helicopter purchase', 'Extensive', 'Unnamed', 'High', 'Outrage', 'Severe'),
(8, 'Fodder Scam', 1996, '950C', 'Bihar', 'Lalu Prasad Yadav', 'Agriculture', 'Closed', 'Conviction', 'Misappropriation of funds', 'Extensive', 'Whistleblower', 'High', 'Outrage', 'Severe'),
(9, 'Telgi Scam', 2003, '20000C', 'Maharashtra', 'Abdul Karim Telgi', 'Counterfeit', 'Closed', 'Conviction', 'Fake stamp papers', 'Extensive', 'Unnamed', 'High', 'Outrage', 'Severe'),
(10, 'Saradha Chit Fund Scam', 2013, '2450C', 'West Bengal', 'Sudipta Sen', 'Finance', 'Ongoing', 'Chargesheet', 'Ponzi scheme', 'Extensive', 'Unnamed', 'High', 'Outrage', 'Severe'),
(11, 'AugustaWestland Scam', 2013, '3600C', 'India', 'Politicians', 'Defence', 'Ongoing', 'Chargesheet', 'Bribery in helicopter purchase', 'Extensive', 'Unnamed', 'High', 'Outrage', 'Severe'),
(12, 'Adarsh Housing Scam', 2010, '3000C', 'Mumbai', 'Politicians', 'Real Estate', 'Ongoing', 'Chargesheet', 'Illegal allotment of flats', 'Extensive', 'Unnamed', 'High', 'Outrage', 'Severe'),
(13, 'IPL Scam', 2013, '4000C', 'India', 'Srinivasan', 'Sports', 'Ongoing', 'Chargesheet', 'Match fixing', 'Extensive', 'Unnamed', 'High', 'Outrage', 'Severe'),
(14, '2G Spectrum Scam', 2008, '1.76T', 'India', 'A. Raja, Kanimozhi', 'Telecom', 'Closed', 'Acquittal', 'Major telecom scam', 'Extensive', 'Unnamed', 'High', 'Outrage', 'Severe'),
(15, 'Commonwealth Games Scam', 2010, '70000C', 'Delhi', 'Suresh Kalmadi', 'Sports', 'Ongoing', 'Chargesheet', 'Irregularities in games', 'Extensive', 'Unnamed', 'High', 'Outrage', 'Severe'),
(16, 'Coal Allocation Scam', 2012, '1.86L', 'India', 'Manmohan Singh', 'Coal', 'Closed', 'Acquittal', 'Misallocation of coal blocks', 'Extensive', 'Unnamed', 'High', 'Outrage', 'Severe'),
(17, 'Vyapam Scam', 2013, '2000C', 'Madhya Pradesh', 'Various Officials', 'Education', 'Ongoing', 'Chargesheet', 'Fraudulent exams', 'Extensive', 'Unnamed', 'High', 'Outrage', 'Severe'),
(18, 'Satyam Scam', 2009, '14000C', 'Hyderabad', 'Ramalinga Raju', 'Corporate', 'Closed', 'Conviction', 'Corporate fraud', 'Extensive', 'Whistleblower', 'High', 'Outrage', 'Severe'),
(19, 'Nirav Modi PNB Fraud', 2018, '14000C', 'Mumbai', 'Nirav Modi', 'Banking', 'Ongoing', 'Chargesheet', 'Bank fraud', 'Extensive', 'Unnamed', 'High', 'Outrage', 'Severe'),
(20, 'Chopper Scam', 2013, '3600C', 'India', 'Several Politicians', 'Defence', 'Ongoing', 'Chargesheet', 'Bribery in helicopter purchase', 'Extensive', 'Unnamed', 'High', 'Outrage', 'Severe');


UPDATE state_info SET total_population = 68000000 WHERE id = 1;
UPDATE state_info SET gdp_value = '255B' WHERE id = 1;
UPDATE state_info SET literacy_percentage = '76%' WHERE id = 1;
UPDATE state_info SET tourism_rating = 4 WHERE id = 1;
UPDATE state_info SET district_count = 32 WHERE id = 1;
UPDATE state_info SET total_population = 125000000 WHERE id = 2;
UPDATE state_info SET gdp_value = '405B' WHERE id = 2;
UPDATE state_info SET literacy_percentage = '83%' WHERE id = 2;
UPDATE state_info SET tourism_rating = 4 WHERE id = 2;
UPDATE state_info SET district_count = 37 WHERE id = 2;

UPDATE scam_info SET investigation_status = 'Ongoing' WHERE id = 1;
UPDATE scam_info SET legal_action = 'Chargesheet Filed' WHERE id = 1;
UPDATE scam_info SET economic_impact = 'Moderate' WHERE id = 1;
UPDATE scam_info SET public_reaction = 'Mixed' WHERE id = 1;
UPDATE scam_info SET media_coverage = 'Moderate' WHERE id = 1;
UPDATE scam_info SET investigation_status = 'Ongoing' WHERE id = 2;
UPDATE scam_info SET legal_action = 'Chargesheet Filed' WHERE id = 2;
UPDATE scam_info SET economic_impact = 'Moderate' WHERE id = 2;
UPDATE scam_info SET public_reaction = 'Mixed' WHERE id = 2;
UPDATE scam_info SET media_coverage = 'Moderate' WHERE id = 2;


DELETE FROM state_info WHERE id IN (3, 4, 5);
DELETE FROM scam_info WHERE id IN (3, 4, 5);


SELECT * FROM state_info WHERE total_population > 50000000 AND gdp_value = '250B';
SELECT * FROM scam_info WHERE investigation_status = 'Ongoing' OR public_reaction = 'Outrage';
SELECT * FROM state_info WHERE id IN (1, 2, 6);
SELECT * FROM scam_info WHERE id NOT IN (1, 2, 6);