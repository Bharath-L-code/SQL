USE bharathl;

CREATE TABLE student_details (
    student_id INT NOT NULL PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    major VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK (age > 0)
);

ALTER TABLE student_details
ADD CONSTRAINT unique_student_name UNIQUE (student_name);

INSERT INTO student_details (student_id, student_name, major, email, age) VALUES
(1, 'Amit Kumar', 'Engineering', 'amit.kumar@example.com', 21),
(2, 'Sneha Desai', 'Business', 'sneha.desai@example.com', 23),
(3, 'Vikram Patel', 'Science', 'vikram.patel@example.com', 22),
(4, 'Rita Singh', 'Arts', 'rita.singh@example.com', 20),
(5, 'Arjun Mehta', 'Engineering', 'arjun.mehta@example.com', 24);

ALTER TABLE student_details
ADD CONSTRAINT check_age CHECK (age >= 18);

ALTER TABLE student_details
DROP CONSTRAINT check_age;

ALTER TABLE student_details
DROP CONSTRAINT unique_student_name;

CREATE TABLE teacher_details (
    teacher_id INT NOT NULL PRIMARY KEY,
    teacher_name VARCHAR(100) NOT NULL,
    subject VARCHAR(50) NOT NULL,
    phone_number VARCHAR(15) UNIQUE,
    salary INT CHECK (salary > 0)
);

ALTER TABLE teacher_details
ADD CONSTRAINT unique_teacher_name UNIQUE (teacher_name);

INSERT INTO teacher_details (teacher_id, teacher_name, subject, phone_number, salary) VALUES
(1, 'Dr. Shalini Roy', 'Mathematics', '9988776655', 70000),
(2, 'Prof. Aditya Sharma', 'Economics', '8877665544', 75000),
(3, 'Mr. Anuj Gupta', 'Chemistry', '7766554433', 80000),
(4, 'Ms. Pooja Kapoor', 'Biology', '6655443322', 65000),
(5, 'Dr. Ramesh Reddy', 'Physics', '5544332211', 90000);

ALTER TABLE teacher_details
ADD CONSTRAINT check_salary CHECK (salary > 50000);

ALTER TABLE teacher_details
DROP CONSTRAINT check_salary;

ALTER TABLE teacher_details
DROP CONSTRAINT unique_teacher_name;

CREATE TABLE course_catalog (
    course_id INT NOT NULL PRIMARY KEY,
    course_title VARCHAR(100) NOT NULL,
    duration VARCHAR(20) NOT NULL,
    fees INT CHECK (fees >= 0)
);

ALTER TABLE course_catalog
ADD CONSTRAINT unique_course_title UNIQUE (course_title);

INSERT INTO course_catalog (course_id, course_title, duration, fees) VALUES
(1, 'Engineering in Computer Science', '4 Years', 250000),
(2, 'Business Administration', '2 Years', 300000),
(3, 'Master of Science', '2 Years', 200000),
(4, 'Bachelor of Arts', '3 Years', 150000),
(5, 'Engineering in Mechanical', '4 Years', 280000);

ALTER TABLE course_catalog
ADD CONSTRAINT check_fees CHECK (fees >= 100000);

ALTER TABLE course_catalog
DROP CONSTRAINT check_fees;

ALTER TABLE course_catalog
DROP CONSTRAINT unique_course_title;

CREATE TABLE enrollment_records (
    enrollment_id INT NOT NULL PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    enrollment_date VARCHAR(10) NOT NULL, 
    duration_days INT CHECK (duration_days > 10)
);

ALTER TABLE enrollment_records
ADD CONSTRAINT unique_enrollment UNIQUE (enrollment_id);

INSERT INTO enrollment_records (enrollment_id, student_id, course_id, enrollment_date, duration_days) VALUES
(1, 1, 1, '2024-01-06', 20),
(2, 2, 2, '2024-01-07', 25),
(3, 3, 3, '2024-01-08', 30),
(4, 4, 4, '2024-01-09', 40),
(5, 5, 5, '2024-01-10', 15);

ALTER TABLE enrollment_records
ADD CONSTRAINT check_duration_days CHECK (duration_days >= 15);

ALTER TABLE enrollment_records
DROP CONSTRAINT check_duration_days;

ALTER TABLE enrollment_records
DROP CONSTRAINT unique_enrollment;
