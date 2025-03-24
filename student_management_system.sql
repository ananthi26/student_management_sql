USE student_management_system;

CREATE TABLE STUDENTS(
student_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE,
department_id INT,
FOREIGN KEY(department_id) REFERENCES DEPARTMENT (department_id),
age INT CHECK(age>=18)
);

CREATE TABLE DEPARTMENT(
department_id INT PRIMARY KEY AUTO_INCREMENT,
department_name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE COURSE(
course_id INT PRIMARY KEY AUTO_INCREMENT,
course_name VARCHAR(100) NOT NULL,
department_id INT,
FOREIGN KEY (department_id) REFERENCES DEPARTMENT(department_id)
);

CREATE TABLE ENTROLLMENT(
entrollment_id INT PRIMARY KEY AUTO_INCREMENT,
student_id INT,
FOREIGN KEY (student_id) REFERENCES STUDENTS(student_id),
course_id INT,
FOREIGN KEY (course_id) REFERENCES COURSE(course_id),
entrollment_date DATE
);

INSERT INTO DEPARTMENT (department_name) VALUES 
('Computer Science'),
('Electrical Engineering'),
('Mechanical Engineering'),
('Civil Engineering'),
('Information Technology');

INSERT INTO STUDENTS (name, email, department_id, age) VALUES 
('Ananthi', 'ananthi@gmail.com', 1, 21),
('Vishnu', 'vishnu@gmail.com', 2, 19),
('Satheesh', 'satheesh@gmail.com', 3, 22),
('kanaga', 'kanaga@gmail.com', 1, 20),
('Karthi', 'karthi@gmail.com', 4, 23);


INSERT INTO COURSE (course_name, department_id) VALUES 
('Database Management', 1),
('Operating Systems', 2),
('Data Science', 3),
('Machine Learning', 4),
('Web Development', 5);


INSERT INTO ENTROLLMENT (student_id, course_id, entrollment_date) VALUES 
(1, 1, '2025-03-01'),
(2, 2, '2025-03-05'),
(3, 3, '2025-03-10'),
(4, 4, '2025-03-15'),
(5, 5, '2025-03-20');

SELECT S.student_id,S.name,S.email,S.age,D.department_name FROM STUDENTS S 
INNER JOIN
DEPARTMENT D
ON D.department_id=S.department_id;


SELECT C.course_id,C.course_name,D.department_name FROM COURSE C
INNER JOIN
DEPARTMENT D
ON C.department_id=D.department_id;


SELECT S.name,C.course_name FROM STUDENTS S
INNER JOIN 
COURSE C
ON 
S.department_id=C.department_id;

SELECT * FROM STUDENTS S
LEFT OUTER JOIN
ENTROLLMENT E
ON S.student_id=E.student_id;

UPDATE STUDENTS
SET email='Ananthignanavel8@gmail.com'
WHERE
student_id=2;


DELETE FROM STUDENTS WHERE student_id=4;









