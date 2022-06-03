DROP DATABASE student;
CREATE DATABASE student;
use student;
CREATE TABLE student (
	student_id INT PRIMARY KEY AUTO_INCREMENT,
    name1 VARCHAR(45),
    major VARCHAR(45)
);

DESCRIBE student;
DROP TABLE student;
ALTER TABLE student ADD gpa DECIMAL(3,2);
ALTER TABLE student DROP COLUMN gpa;

SELECT * FROM student;
INSERT INTO student(name1, major) VALUES('Jack', 'Sociology');
INSERT INTO student(name1, major) VALUES('Kate', 'Biology');
INSERT INTO student(name1, major) VALUES('Johny', 'Chemistry');
INSERT INTO student(name1, major) VALUES('Kate', 'Biology');
INSERT INTO student(name1, major) VALUES('Bob', 'Computer Science');

SET SQL_SAFE_UPDATES = 0;
UPDATE student SET major = 'Bio' WHERE major = 'Sociology';

SELECT student.name1, student.major FROM student ORDER BY name1;
SELECT * FROM student WHERE major = 'Biology';
SELECT * FROM student WHERE name1 IN ('Jack', 'Johny', 'Bob')
