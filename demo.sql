USE student_table;

CREATE TABLE STUDENTS (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    department_id INT,
    age INT CHECK (age >= 18)
);

DESC STUDENTS;

INSERT INTO STUDENTS (name, email, department_id, age) 
VALUES ('Ananthi', 'ananthi@gmail.com', 1, 18),('Varshini','varshini@gmail.com',1,22),('Savitha','savitha@gmail.com',2,19),('Tharunya','tharunya@gamil.com',2,20);

SELECT * FROM STUDENTS;