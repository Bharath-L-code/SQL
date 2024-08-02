create database RTO;
use RTO;

CREATE TABLE LLR_INFO (LLR_ID VARCHAR(20) PRIMARY KEY, Applicant_Name VARCHAR(30), Date_of_Birth DATE,
    Address VARCHAR(20),Contact_Number VARCHAR(15), Email VARCHAR(100), Issue_Date DATE, 
    Expiry_Date DATE, Blood_Group VARCHAR(5), Gender VARCHAR(20));

CREATE TABLE LLR_TEST_INFO ( LLR_ID VARCHAR(20), FOREIGN KEY (LLR_ID) REFERENCES LLR_INFO(LLR_ID), Applicant_Name VARCHAR(30), 
	TEST_ID VARCHAR(20) PRIMARY KEY,Test_Date DATE,Test_Time TIME,Test_Result ENUM('PASS','FAIL'), Examiner_Name VARCHAR(100), Test_Center VARCHAR(100),        
    Remarks VARCHAR(30),REPORTING_TIME TIMESTAMP);

CREATE TABLE DRIVING_LICENCE_INFO (DL_ID VARCHAR(20) PRIMARY KEY,LLR_ID VARCHAR(20), FOREIGN KEY (LLR_ID) REFERENCES LLR_INFO(LLR_ID), TEST_ID VARCHAR(20), 
	FOREIGN KEY (TEST_ID) REFERENCES LLR_TEST_INFO(TEST_ID),Applicant_Name VARCHAR(100),
    Date_of_Birth DATE,Address VARCHAR(255), Contact_Number VARCHAR(15), Email VARCHAR(100), Issue_Date DATE,      
    DL_Expiry_Date DATE);
    
CREATE TABLE DRIVING_LICENSE_TEST_INFO (DL_ID VARCHAR(20),FOREIGN KEY (DL_ID) REFERENCES DRIVING_LICENCE_INFO(DL_ID),Test_ID VARCHAR(20) PRIMARY KEY, 
	Test_Date DATE,Test_Time TIME, Test_Result ENUM('PASS','FAIL'), Examiner_Name VARCHAR(100), Test_Center VARCHAR(100),       
    Remarks VARCHAR(30),ISSUE_TIME TIMESTAMP);
    
INSERT INTO LLR_INFO (LLR_ID, Applicant_Name, Date_of_Birth, Address, Contact_Number, Email, Issue_Date, Expiry_Date, Blood_Group, Gender) VALUES
('LLR001', 'Ravi Kumar', '1990-05-15', 'Indiranagar', '9876543210', 'ravi.kumar@gmail.com', '2024-01-01', '2026-01-01', 'O+', 'Male'),
('LLR002', 'Sita Rao', '1985-08-20', 'Koramangala', '9876543211', 'sita.rao@gmail.com', '2024-01-02', '2026-01-02', 'A+', 'Female'),
('LLR003', 'Arjun Patil', '1992-12-10', 'Whitefield', '9876543212', 'arjun.patil@gmail.com', '2024-01-03', '2026-01-03', 'B+', 'Male'),
('LLR004', 'Lakshmi Iyer', '1995-03-25', 'Jayanagar', '9876543213', 'lakshmi.iyer@gmail.com', '2024-01-04', '2026-01-04', 'AB+', 'Female'),
('LLR005', 'Mohan Reddy', '1988-07-14', 'HSR Layout', '9876543214', 'mohan.reddy@gmail.com', '2024-01-05', '2026-01-05', 'O-', 'Male'),
('LLR006', 'Priya Das', '1991-09-30', 'Malleshwaram', '9876543215', 'priya.das@gmail.com', '2024-01-06', '2026-01-06', 'A-', 'Female'),
('LLR007', 'Rohan Mehta', '1987-11-21', 'Marathahalli', '9876543216', 'rohan.mehta@yahoo.com', '2024-01-07', '2026-01-07', 'B-', 'Male'),
('LLR008', 'Sunita Menon', '1993-04-18', 'Rajajinagar', '9876543217', 'sunita.menon@yahoo.com', '2024-01-08', '2026-01-08', 'AB-', 'Female'),
('LLR009', 'Vikram Singh', '1989-02-11', 'Banashankari', '9876543218', 'vikram.singh@yahoo.com', '2024-01-09', '2026-01-09', 'O+', 'Male'),
('LLR010', 'Nisha Shah', '1994-06-05', 'Yelahanka', '9876543219', 'nisha.shah@yahoo.com', '2024-01-10', '2026-01-10', 'A+', 'Female'),
('LLR011', 'Aditya Verma', '1990-01-15', 'Indiranagar', '9876543220', 'aditya.verma@gmail.com', '2024-01-11', '2026-01-11', 'B+', 'Male'),
('LLR012', 'Sneha Roy', '1985-05-25', 'Koramangala', '9876543221', 'sneha.roy@gmail.com', '2024-01-12', '2026-01-12', 'AB+', 'Female'),
('LLR013', 'Karthik Shetty', '1992-11-10', 'Whitefield', '9876543222', 'karthik.shetty@gmail.com', '2024-01-13', '2026-01-13', 'O-', 'Male'),
('LLR014', 'Meera Nair', '1995-02-05', 'Jayanagar', '9876543223', 'meera.nair@gmail.com', '2024-01-14', '2026-01-14', 'A-', 'Female'),
('LLR015', 'Sanjay Gupta', '1988-07-28', 'HSR Layout', '9876543224', 'sanjay.gupta@yahoo.com', '2024-01-15', '2026-01-15', 'B-', 'Male'),
('LLR016', 'Ritu Singh', '1991-09-12', 'Malleshwaram', '9876543225', 'ritu.singh@yahoo.com', '2024-01-16', '2026-01-16', 'AB-', 'Female'),
('LLR017', 'Amit Bhatia', '1987-10-20', 'Marathahalli', '9876543226', 'amit.bhatia@yahoo.com', '2024-01-17', '2026-01-17', 'O+', 'Male'),
('LLR018', 'Pooja Desai', '1993-03-18', 'Rajajinagar', '9876543227', 'pooja.desai@yahoo.com', '2024-01-18', '2026-01-18', 'A+', 'Female'),
('LLR019', 'Rajesh Khanna', '1989-11-15', 'Banashankari', '9876543228', 'rajesh.khanna@yahoo.com', '2024-01-19', '2026-01-19', 'B+', 'Male'),
('LLR020', 'Anita Kapoor', '1994-08-10', 'Yelahanka', '9876543229', 'anita.kapoor@yahoo.com', '2024-01-20', '2026-01-20', 'AB+', 'Female');


INSERT INTO LLR_TEST_INFO (LLR_ID, Applicant_Name, TEST_ID, Test_Date, Test_Time, Test_Result, Examiner_Name, Test_Center, Remarks, REPORTING_TIME) VALUES
('LLR001', 'Ravi Kumar', 'TEST001', '2024-02-01', '10:00:00', 'PASS', 'Ajay Mehta', 'Rajajinagar Test Center 1', 'None', '2024-02-01 09:30:00'),
('LLR002', 'Sita Rao', 'TEST002', '2024-02-02', '11:00:00', 'FAIL', 'Anita Sharma', 'Rajajinagar Test Center 2', 'Re-test required', '2024-02-02 10:30:00'),
('LLR003', 'Arjun Patil', 'TEST003', '2024-02-03', '09:00:00', 'PASS', 'Rakesh Gupta', 'Rajajinagar Test Center 1', 'None', '2024-02-03 08:30:00'),
('LLR004', 'Lakshmi Iyer', 'TEST004', '2024-02-04', '12:00:00', 'PASS', 'Deepa Nair', 'Rajajinagar Test Center 3', 'None', '2024-02-04 11:30:00'),
('LLR005', 'Mohan Reddy', 'TEST005', '2024-02-05', '14:00:00', 'FAIL', 'Vijay Kumar', 'Rajajinagar Test Center 2', 'Re-test required', '2024-02-05 13:30:00'),
('LLR006', 'Priya Das', 'TEST006', '2024-02-06', '10:30:00', 'PASS', 'Sunita Rao', 'Rajajinagar Test Center 1', 'None', '2024-02-06 10:00:00'),
('LLR007', 'Rohan Mehta', 'TEST007', '2024-02-07', '13:00:00', 'FAIL', 'Rajesh Singh', 'Rajajinagar Test Center 3', 'Re-test required', '2024-02-07 12:30:00'),
('LLR008', 'Sunita Menon', 'TEST008', '2024-02-08', '09:30:00', 'PASS', 'Anil Joshi', 'Yeshwanthpur Test Center 1', 'None', '2024-02-08 09:00:00'),
('LLR009', 'Vikram Singh', 'TEST009', '2024-02-09', '11:30:00', 'PASS', 'Suman Das', 'Yeshwanthpur Test Center 2', 'None', '2024-02-09 11:00:00'),
('LLR010', 'Nisha Shah', 'TEST010', '2024-02-10', '15:00:00', 'FAIL', 'Priya Jain', 'Yeshwanthpur Test Center 3', 'Re-test required', '2024-02-10 14:30:00'),
('LLR011', 'Aditya Verma', 'TEST011', '2024-02-11', '10:00:00', 'PASS', 'Ajay Mehta', 'Yeshwanthpur Test Center 1', 'None', '2024-02-11 09:30:00'),
('LLR012', 'Sneha Roy', 'TEST012', '2024-02-12', '11:00:00', 'FAIL', 'Anita Sharma', 'Yeshwanthpur Test Center 2', 'Re-test required', '2024-02-12 10:30:00'),
('LLR013', 'Karthik Shetty', 'TEST013', '2024-02-13', '09:00:00', 'PASS', 'Rakesh Gupta', 'Yeshwanthpur Test Center 1', 'None', '2024-02-13 08:30:00'),
('LLR014', 'Meera Nair', 'TEST014', '2024-02-14', '12:00:00', 'PASS', 'Deepa Nair', 'Ullal Test Center 3', 'None', '2024-02-14 11:30:00'),
('LLR015', 'Sanjay Gupta', 'TEST015', '2024-02-15', '14:00:00', 'FAIL', 'Vijay Kumar', 'Ullal Test Center 2', 'Re-test required', '2024-02-15 13:30:00'),
('LLR016', 'Ritu Singh', 'TEST016', '2024-02-16', '10:30:00', 'PASS', 'Sunita Rao', 'Ullal Test Center 1', 'None', '2024-02-16 10:00:00'),
('LLR017', 'Amit Bhatia', 'TEST017', '2024-02-17', '13:00:00', 'FAIL', 'Rajesh Singh', 'Ullal Test Center 3', 'Re-test required', '2024-02-17 12:30:00'),
('LLR018', 'Pooja Desai', 'TEST018', '2024-02-18', '09:30:00', 'PASS', 'Anil Joshi', 'Ullal Test Center 1', 'None', '2024-02-18 09:00:00'),
('LLR019', 'Rajesh Khanna', 'TEST019', '2024-02-19', '11:30:00', 'PASS', 'Suman Das', 'Ullal Test Center 2', 'None', '2024-02-19 11:00:00'),
('LLR020', 'Anita Kapoor', 'TEST020', '2024-02-20', '15:00:00', 'FAIL', 'Priya Jain', 'Kengeri Test Center 3', 'Re-test required', '2024-02-20 14:30:00');


INSERT INTO DRIVING_LICENCE_INFO (DL_ID, LLR_ID, TEST_ID, Applicant_Name, Date_of_Birth, Address, Contact_Number, Email, Issue_Date, DL_Expiry_Date) VALUES
('DL001', 'LLR001', 'TEST001', 'Ravi Kumar', '1990-05-15', 'Indiranagar, Bangalore', '9876543210', 'ravi.kumar@gmail.com', '2024-03-01', '2034-03-01'),
('DL002', 'LLR002', 'TEST002', 'Sita Rao', '1985-08-20', 'Koramangala, Bangalore', '9876543211', 'sita.rao@gmail.com', '2024-03-02', '2034-03-02'),
('DL003', 'LLR003', 'TEST003', 'Arjun Patil', '1992-12-10', 'Whitefield, Bangalore', '9876543212', 'arjun.patil@gmail.com', '2024-03-03', '2034-03-03'),
('DL004', 'LLR004', 'TEST004', 'Lakshmi Iyer', '1995-03-25', 'Jayanagar, Bangalore', '9876543213', 'lakshmi.iyer@gmail.com', '2024-03-04', '2034-03-04'),
('DL005', 'LLR005', 'TEST005', 'Mohan Reddy', '1988-07-14', 'HSR Layout, Bangalore', '9876543214', 'mohan.reddy@gmail.com', '2024-03-05', '2034-03-05'),
('DL006', 'LLR006', 'TEST006', 'Priya Das', '1991-09-30', 'Malleshwaram, Bangalore', '9876543215', 'priya.das@gmail.com', '2024-03-06', '2034-03-06'),
('DL007', 'LLR007', 'TEST007', 'Rohan Mehta', '1987-11-21', 'Marathahalli, Bangalore', '9876543216', 'rohan.mehta@yahoo.com', '2024-03-07', '2034-03-07'),
('DL008', 'LLR008', 'TEST008', 'Sunita Menon', '1993-04-18', 'Rajajinagar, Bangalore', '9876543217', 'sunita.menon@yahoo.com', '2024-03-08', '2034-03-08'),
('DL009', 'LLR009', 'TEST009', 'Vikram Singh', '1989-02-11', 'Banashankari, Bangalore', '9876543218', 'vikram.singh@yahoo.com', '2024-03-09', '2034-03-09'),
('DL010', 'LLR010', 'TEST010', 'Nisha Shah', '1994-06-05', 'Yelahanka, Bangalore', '9876543219', 'nisha.shah@yahoo.com', '2024-03-10', '2034-03-10'),
('DL011', 'LLR011', 'TEST011', 'Aditya Verma', '1990-01-15', 'Indiranagar, Bangalore', '9876543220', 'aditya.verma@gmail.com', '2024-03-11', '2034-03-11'),
('DL012', 'LLR012', 'TEST012', 'Sneha Roy', '1985-05-25', 'Koramangala, Bangalore', '9876543221', 'sneha.roy@gmail.com', '2024-03-12', '2034-03-12'),
('DL013', 'LLR013', 'TEST013', 'Karthik Shetty', '1992-11-10', 'Whitefield, Bangalore', '9876543222', 'karthik.shetty@gmail.com', '2024-03-13', '2034-03-13'),
('DL014', 'LLR014', 'TEST014', 'Meera Nair', '1995-02-05', 'Jayanagar, Bangalore', '9876543223', 'meera.nair@gmail.com', '2024-03-14', '2034-03-14'),
('DL015', 'LLR015', 'TEST015', 'Sanjay Gupta', '1988-07-28', 'HSR Layout, Bangalore', '9876543224', 'sanjay.gupta@yahoo.com', '2024-03-15', '2034-03-15'),
('DL016', 'LLR016', 'TEST016', 'Ritu Singh', '1991-09-12', 'Malleshwaram, Bangalore', '9876543225', 'ritu.singh@yahoo.com', '2024-03-16', '2034-03-16'),
('DL017', 'LLR017', 'TEST017', 'Amit Bhatia', '1987-10-20', 'Marathahalli, Bangalore', '9876543226', 'amit.bhatia@yahoo.com', '2024-03-17', '2034-03-17'),
('DL018', 'LLR018', 'TEST018', 'Pooja Desai', '1993-03-18', 'Rajajinagar, Bangalore', '9876543227', 'pooja.desai@yahoo.com', '2024-03-18', '2034-03-18'),
('DL019', 'LLR019', 'TEST019', 'Rajesh Khanna', '1989-11-15', 'Banashankari, Bangalore', '9876543228', 'rajesh.khanna@yahoo.com', '2024-03-19', '2034-03-19'),
('DL020', 'LLR020', 'TEST020', 'Anita Kapoor', '1994-08-10', 'Yelahanka, Bangalore', '9876543229', 'anita.kapoor@yahoo.com', '2024-03-20', '2034-03-20');


INSERT INTO DRIVING_LICENSE_TEST_INFO (DL_ID, Test_ID, Test_Date, Test_Time, Test_Result, Examiner_Name, Test_Center, Remarks, ISSUE_TIME) VALUES
('DL001', 'DLTEST001', '2024-04-01', '10:00:00', 'PASS', 'Ajay Mehta', 'Rajajinagar Test Center 1', 'None', '2024-04-01 09:30:00'),
('DL002', 'DLTEST002', '2024-04-02', '11:00:00', 'FAIL', 'Anita Sharma', 'Rajajinagar Test Center 2', 'Re-test required', '2024-04-02 10:30:00'),
('DL003', 'DLTEST003', '2024-04-03', '09:00:00', 'PASS', 'Rakesh Gupta', 'Rajajinagar Test Center 1', 'None', '2024-04-03 08:30:00'),
('DL004', 'DLTEST004', '2024-04-04', '12:00:00', 'PASS', 'Deepa Nair', 'Rajajinagar Test Center 3', 'None', '2024-04-04 11:30:00'),
('DL005', 'DLTEST005', '2024-04-05', '14:00:00', 'FAIL', 'Vijay Kumar', 'Rajajinagar Test Center 2', 'Re-test required', '2024-04-05 13:30:00'),
('DL006', 'DLTEST006', '2024-04-06', '10:30:00', 'PASS', 'Sunita Rao', 'Rajajinagar Test Center 1', 'None', '2024-04-06 10:00:00'),
('DL007', 'DLTEST007', '2024-04-07', '13:00:00', 'FAIL', 'Rajesh Singh', 'Rajajinagar Test Center 3', 'Re-test required', '2024-04-07 12:30:00'),
('DL008', 'DLTEST008', '2024-04-08', '09:30:00', 'PASS', 'Anil Joshi', 'Yeshwanthpur Test Center 1', 'None', '2024-04-08 09:00:00'),
('DL009', 'DLTEST009', '2024-04-09', '11:30:00', 'PASS', 'Suman Das', 'Yeshwanthpur Test Center 2', 'None', '2024-04-09 11:00:00'),
('DL010', 'DLTEST010', '2024-04-10', '15:00:00', 'FAIL', 'Priya Jain', 'Yeshwanthpur Test Center 3', 'Re-test required', '2024-04-10 14:30:00'),
('DL011', 'DLTEST011', '2024-04-11', '10:00:00', 'PASS', 'Ajay Mehta', 'Yeshwanthpur Test Center 1', 'None', '2024-04-11 09:30:00'),
('DL012', 'DLTEST012', '2024-04-12', '11:00:00', 'FAIL', 'Anita Sharma', 'Yeshwanthpur Test Center 2', 'Re-test required', '2024-04-12 10:30:00'),
('DL013', 'DLTEST013', '2024-04-13', '09:00:00', 'PASS', 'Rakesh Gupta', 'Yeshwanthpur Test Center 1', 'None', '2024-04-13 08:30:00'),
('DL014', 'DLTEST014', '2024-04-14', '12:00:00', 'PASS', 'Deepa Nair', 'Ullal Test Center 3', 'None', '2024-04-14 11:30:00'),
('DL015', 'DLTEST015', '2024-04-15', '14:00:00', 'FAIL', 'Vijay Kumar', 'Ullal Test Center 2', 'Re-test required', '2024-04-15 13:30:00'),
('DL016', 'DLTEST016', '2024-04-16', '10:30:00', 'PASS', 'Sunita Rao', 'Ullal Test Center 1', 'None', '2024-04-16 10:00:00'),
('DL017', 'DLTEST017', '2024-04-17', '13:00:00', 'FAIL', 'Rajesh Singh', 'Ullal Test Center 3', 'Re-test required', '2024-04-17 12:30:00'),
('DL018', 'DLTEST018', '2024-04-18', '09:30:00', 'PASS', 'Anil Joshi', 'Ullal Test Center 1', 'None', '2024-04-18 09:00:00'),
('DL019', 'DLTEST019', '2024-04-19', '11:30:00', 'PASS', 'Suman Das', 'Ullal Test Center 2', 'None', '2024-04-19 11:00:00'),
('DL020', 'DLTEST020', '2024-04-20', '15:00:00', 'FAIL', 'Priya Jain', 'Kengeri Test Center 3', 'Re-test required', '2024-04-20 14:30:00');



SELECT*FROM  LLR_INFO;
SELECT*FROM  LLR_TEST_INFO;
SELECT*FROM  DRIVING_LICENCE_INFO;
SELECT*FROM  DRIVING_LICENSE_TEST_INFO;
