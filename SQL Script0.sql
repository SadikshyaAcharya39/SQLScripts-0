CREATE DATABASE PracticeDB;
USE PracticeDB;

CREATE TABLE Students ( 
  student_id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  age INT NOT NULL,
  email VARCHAR(100) NOT NULL,
  date_joined DATE NOT NULL
);

DROP TABLE Students

CREATE TABLE Courses (
course_id INT PRIMARY KEY auto_increment,
course_name VARCHAR(50),
course_code VARCHAR(10)
);

CREATE TABLE Enrollments (
enrollment_id INT PRIMARY KEY auto_increment,
student_id INT,
course_id INT,
enrollment_date DATE,
FOREIGN KEY (student_id) REFERENCES Students(student_id),
FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- Insert data into Students table
INSERT INTO Students (first_name, last_name, age, email, date_joined) VALUES
('John', 'Doe', 21, 'john.doe@email.com', '2024-01-15'),
('Jane', 'Smith', 22, 'jane.smith@email.com', '2023-09-20'),
('Sam', 'Brown', 23, 'sam.brown@email.com', '2022-11-01'),
('Emily', 'Davis', 20, 'emily.davis@email.com', '2023-08-12'),
('Michael', 'Wilson', 24, 'michael.wilson@email.com', '2022-06-10'),
('Sophia', 'Taylor', 22, 'sophia.taylor@email.com', '2023-07-21'),
('James', 'Martinez', 25, 'james.martinez@email.com', '2021-12-05'),
('Isabella', 'Garcia', 23, 'isabella.garcia@email.com', '2023-03-14'),
('Daniel', 'Rodriguez', 21, 'daniel.rodriguez@email.com', '2023-05-30'),
('Olivia', 'Martinez', 22, 'olivia.martinez@email.com', '2023-02-18'),
('Lucas', 'Hernandez', 24, 'lucas.hernandez@email.com', '2022-09-25'),
('Liam', 'Lopez', 21, 'liam.lopez@email.com', '2024-01-10'),
('Mia', 'Gonzalez', 23, 'mia.gonzalez@email.com', '2023-10-04'),
('Ethan', 'Perez', 20, 'ethan.perez@email.com', '2024-02-01'),
('Ava', 'Wilson', 22, 'ava.wilson@email.com', '2023-12-12'),
('Mason', 'Anderson', 24, 'mason.anderson@email.com', '2022-11-10'),
('Chloe', 'Thomas', 23, 'chloe.thomas@email.com', '2023-06-15'),
('Amelia', 'Jackson', 21, 'amelia.jackson@email.com', '2024-01-01'),
('Benjamin', 'White', 25, 'benjamin.white@email.com', '2022-08-22'),
('Charlotte', 'King', 22, 'charlotte.king@email.com', '2023-11-03');

-- Insert data into Courses table
INSERT INTO Courses (course_name, course_code) VALUES
('Computer Science 101', 'CS101'),
('Database Systems', 'DBS102'),
('Web Development', 'WD103'),
('Data Science', 'DS104'),
('Software Engineering', 'SE105'),
('Machine Learning', 'ML106'),
('Operating Systems', 'OS107'),
('Computer Networks', 'CN108'),
('Artificial Intelligence', 'AI109'),
('Cybersecurity', 'CS110');

-- Insert data into Enrollments table
INSERT INTO Enrollments (student_id, course_id, enrollment_date) VALUES
(1, 1, '2024-01-15'),
(2, 2, '2023-09-21'),
(3, 3, '2022-11-05'),
(4, 4, '2023-08-15'),
(5, 5, '2022-06-12'),
(6, 6, '2023-07-23'),
(7, 7, '2021-12-07'),
(8, 8, '2023-03-16'),
(9, 9, '2023-05-30'),
(10, 10, '2023-02-22'),
(11, 1, '2024-01-12'),
(12, 2, '2023-09-25'),
(13, 3, '2022-11-08'),
(14, 4, '2023-07-21'),
(15, 5, '2024-02-03'),
(16, 6, '2023-11-11'),
(17, 7, '2022-08-10'),
(18, 8, '2023-06-10'),
(19, 9, '2024-01-04'),
(20, 10, '2023-10-01');

SELECT * FROM Students;
Select first_name AS FirstName, last_name As LastName FROM Students;

select date_joined as JoinedDate FROM Students;

(SELECT * from Students WHERE date_joined >= '2023-12-30');

select * from Students order by age, first_name desc;

SELECT * FROM Students order by date_joined desc;

-- Random
select * from Students limit 5; 

select * from Students 
ORDER BY date_joined asc  
LIMIT 5;

SELECT * FROM Students 
ORDER BY date_joined asc
limit 3;

SELECT * FROM Courses
order by  course_name asc;

SELECT * FROM Students
ORDER BY date_joined desc
LIMIT 10;

SELECT * FROM Students
order by student_id
LIMIT 5;

select * from Students 
where first_name like 'a%'
ORDER BY last_name;

select * from Students 
where age < 22
ORDER BY age DESC;

select * from Students 
where date_joined > '2023-01-01'
ORDER BY date_joined;

select * from Students
where first_name LIKE '%e%' 
ORDER BY last_name asc;

SELECT student_id, enrollment_date FROM Enrollments
order by enrollment_date asc
LIMIT 10;

SELECT DISTINCT (course_name) from Courses
ORDER BY course_name desc;

SELECT * FROM Students
where email like '%.com'
ORDER BY student_id
LIMIT 7;

SELECT * FROM Students 
where date_joined >= '2023-01-01'
ORDER BY first_name;

SELECT * FROM Students
ORDER BY student_id desc
LIMIT 5;

SELECT * FROM Students
WHERE last_name LIKE '%z' or '%s'
order by date_joined;

SELECT * FROM Enrollments
WHERE course_id > 5
ORDER BY enrollment_date;

SELECT * FROM Students
WHERE date_joined BETWEEN '2023-01-01' AND '2023-12-31'
ORDER BY date_joined desc;

SELECT * FROM Students
ORDER BY age desc
LIMIT 2
OFFSET 1;

-- SELECT * FROM Students
-- WHERE first_name LIKE '_____' 
-- ORDER BY last_name;

SELECT * FROM STUDENTS
WHERE length(first_name) = 5
ORDER BY last_name;

SELECT * FROM Enrollments
WHERE student_id % 2 = 0
ORDER BY enrollment_date
LIMIT 10;

SELECT * FROM Students 
WHERE email LIKE '%gmail%'
ORDER BY age desc;

SELECT * FROM Students
WHERE email like '%email%'
ORDER BY age desc;

SELECT * FROM Courses
WHERE course_name LIKE '%Data%' or '%Computer%'
ORDER BY course_name asc;


SELECT * FROM Students
WHERE student_id NOT IN (SELECT student_id FROM Enrollments)
ORDER BY first_name;

-- Retrieve the first student whose last_name starts with 'M' and age is greater than 21.

SELECT * FROM Students
WHERE last_name LIKE 'M%' AND age> 21
LIMIT 1;

SELECT * FROM Enrollments
ORDER BY enrollment_date DESC;

select * from Students
WHERE LEFT(first_name, 1) = LEFT (last_name, 1)
ORDER BY student_id;

--  Retrieve all students who joined between January 1, 2023, and December 31, 2023, ordered by date_joined in descending order. 

SELECT * FROM Students
WHERE date_joined between '2023-01-01' and '2023-12-31'
ORDER BY date_joined;

--  Retrieve the second and third oldest students based on age.

SELECT * FROM Students
Order by age 
LIMIT 2 OFFSET 1;

-- Retrieve students whose first_name has exactly 
-- five characters and order them by last_name.  

SELECT * FROM Students
WHERE length(first_name) = 5
order by last_name;

-- Retrieve the first 10 enrollments where student_id is an even number, 
-- ordered by enrollment_date. 

SELECT * FROM Enrollments
WHERE student_id % 2 = 0
order by enrollment_date
LIMIT 10;

-- Retrieve all students whose email contains 'gmail' and
--  order them by age in descending order. 

SELECT * FROM Students
WHERE email LIKE '%gmail%'
ORDER BY age DESC;

-- Retrieve all students whose email contains 'email' and
--  order them by age in descending order. 

SELECT * FROM Students
WHERE email LIKE '%email%'
ORDER BY age DESC;


--  Retrieve courses where the course name contains 
-- either 'Data' or 'Computer', ordered alphabetically. 

SELECT * FROM Courses
WHERE course_name like '%Data%' or '%Computer%'
ORDER BY course_name asc;

-- Retrieve students who are not enrolled in any courses, ordered by first_name.

Select * from Students 
WHERE student_id NOT IN (select student_id from Enrollments)
ORDER BY first_name; 

-- Retrieve the first student whose last_name starts with 'M' and age is greater than 21. 

SELECT * FROM Students
WHERE last_name LIKE 'M%' AND age>21
LIMIT 1;

-- Retrieve the most recent enrollment for each student,
--  ordered by enrollment_date in descending order. 

SELECT * FROM Enrollments
ORDER BY enrollment_date DESC;

-- Retrieve students whose first_name and last_name start with the same letter, ordered by student_id.

select * from Students
WHERE left(first_name, 1) = left(last_name, 1)
ORDER BY student_id; 


-- Retrieve students who are not enrolled in any courses, ordered by first_name

SELECT * FROM Students
where student_id NOT IN (SELECT student_id from Enrollments)
ORDER BY first_name; 

-- Retrieve all students who are older than 22 AND joined after January 1, 2023.
 
SELECT * FROM Students
WHERE age > 22 AND date_joined > '2023-01-01';

-- Retrieve all students who DO NOT have 'gmail' in their email.

SELECT * FROM STUDENTS
WHERE email not like '%gmail%'; 

SELECT * FROM Students
WHERE age = 21 OR date_joined >= '2024-01-01';

SELECT * FROM Enrollments
WHERE course_id = 3 AND enrollment_date > '2022-01-01'; 


-- Retrieve all students who are NOT enrolled in any course.

SELECT * FROM Students
WHERE student_id not in (SELECT student_id from Enrollments);

SELECT * FROM Courses 
WHERE course_name LIKE '%Computer%' OR course_id > 5;

SELECT * FROM Students
WHERE (date_joined between '2022-01-01' and '2022-12-31') AND age > 22;

select * from Students
where NOT age > 22;

select * from Students
WHERE NOT date_joined BETWEEN '2023-01-01' and '2023-12-31';

select * from Students
WHERE first_name NOT LIKE 'a%';


select * from Enrollments
WHERE course_id != 5;

SELECT * FROM Enrollments
where NOT course_id = 5;

SELECT * FROM Students 
WHERE student_id NOT IN (SELECT student_id FROM Enrollments);

SELECT * FROM Students
WHERE student_id % 2 != 0;

select * from Students
WHERE NOT student_id % 2 = 0;

select * from Students
WHERE email not LIKE '%.edu';

-- Testing NULL VALUES
 
SELECT * FROM Students
WHERE email IS NOT NULL;

select * from Enrollments
WHERE enrollment_date is NULL;

-- Update Table

SELECT * FROM Students; 

UPDATE Students
SET first_name = 'Sadikshya' 
WHERE student_id = 1;

SELECT * FROM Students;

 -- Updating Single Record
 
UPDATE Students
SET last_name = 'Acharya'
where student_id = 1;

-- Updating Multiple Records
 
UPDATE Students
SET first_name = 'Shraddha', last_name = 'Acharya', email='acharyashraddha71@gmail.com'
WHERE student_id = 2;

UPDATE Students
SET email = 'acharya.sadikshya33@gmail.com'
WHERE student_id = 1;

select * from students;

UPDATE Students
SET age = 20 
where student_id = 1;

select * from Students;

UPDATE Students
set age = 21
where age = 20;

UPDATE Students
SET first_name = null, last_name = null
WHERE student_id = 9;

SET SQL_SAFE_UPDATES = 0;

UPDATE Students
SET first_name = 'Daniel', last_name = 'Rodriguez'
WHERE (first_name IS NULL AND last_name IS NULL);

UPDATE Students
SET first_name = 'Daniel', last_name = 'Rodriguez'
WHERE student_id = 9 OR (first_name IS NULL AND last_name IS NULL);

SELECT * FROM STUDENTS;

UPDATE Students
set address = 'Kathmandu,Nepal'
where student_id = 12;

UPDATE Students
set first_name = 'Alexander' 
where first_name = 'Alex';

DROP TABLE STUDENTS;
drop table enrollments;
drop table courses;

UPDATE Students
set email = CONCAT(SUBSTRING_INDEX(email, '@', 1), '@gmail.com' )
where email LIKE '%@email.com%';

select * from students;

DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';

-- SQL Aggregate Functions
-- MAX, MIN, AVG, COUNT, SUM

select MAX(age) as Maximum_Age from Students; 
select MIN(age) as Minimum_Age from Students; 
select AVG(age) as Average_Age from Students; 

SELECT COUNT(student_id) as TotalStudents FROM Students;
select * from students;

SELECT COUNT(*) FROM Students;

select count( distinct age) from Students; 
select * from students;

-- GROUP BY
SELECT SUM(distinct age) from Students;











