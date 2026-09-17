
--- OPERATORS --- 

-- 1 - ARITHMETIC OPERATOR -- 

SELECT * FROM employee; 

-- Retrieve the name , salary and calculate a 10% bonus on the salary.


SELECT name, salary,
	(salary*0.10) AS Bonus
FROM employee;
	

-- CALCULATE NEW SALARY --- 
-- calculate the annual salary and salary increment by 5% - show the monthly new salary as well.


SELECT * FROM employee;

SELECT name, salary,
	(salary*12) AS annual_salary,
	(salary*0.05) AS increment_salary,
	(salary + salary*0.05) AS new_salary,
	(salary *1.05) AS new_salary2
FROM employee;


-- 2 - COMPARISON OPERATOR -- 


-- matches age 31
SELECT * FROM employee
WHERE age = 31;

-- matches all except 31
SELECT name, age FROM employee
WHERE age != 31;

-- salary greather than 45000
SELECT salary, name FROM employee
WHERE salary > 45000;


--- LOGICAL OPERATORS --

--- USING AND OPERATOR --- 

SELECT * FROM employee
WHERE age>=31 AND salary >=42000;


--- USING OR OPERATOR-- 

SELECT * FROM employee
WHERE age<=21 OR salary >=41000;

--- USING NOT OPERATOR --
SELECT * FROM employee
WHERE NOT (age = '31');

-- BETWEEN, LIKE AND IN OPERATOR -- 

-- 1) RETRIEVE EMPLOYEE WHOSE SALARY IS BETWEEN 41000 AND 45000. - USE BETWEEN OPERATOR.

SELECT name, salary
FROM employee
WHERE salary BETWEEN 41000 AND 45000;

-- 2) FIND EMPLOYEE WHOSE EMAIL ADDRESSES END WITH GMAIL.COM - USE LIKE OPERATOR.

SELECT name, email
FROM employee
WHERE email LIKE '%@gmail.com';

SELECT name
FROM employee
WHERE name LIKE '%a';

-- 3) RETRIEVE EMPLOYEE WHO BELONG TO EITHER THE 'FINANCE' AND 'MARKETING' DEPARTMENTS -- USE IN OPERATOR.

SELECT name, department 
FROM employee 
WHERE department IN ('Finance', 'Marketing');


-- OTHER OPERATOR ---
-- 1 IS NULL OPERATOR 
-- 2 ORDER BY OPERATOR
-- 3 LIMIT OPERATOR
-- 4 DISTINCT OPERATOR


-- FIND EMPLOYEE WHERE THE EMAIL COLUMN IS NULL (IF APPLICABLE).

SELECT name, email
FROM employee
WHERE email IS NULL;


-- LIST EMPLOYEE SORTED BY SALARY IN DESCENDING ORDER.

SELECT name, salary
FROM employee
ORDER BY salary ASC;

-- RETRIEVE THE TOP 5 HIGHEST PAID EMPLOYEE

SELECT name, salary
FROM employee
ORDER BY salary DESC
LIMIT 3;

-- RETRIEVE  A LIST OF UNIQUE DEPARTMENTS

SELECT DISTINCT department
FROM employee;

--- SET OPERATOR --

CREATE TABLE student_2026 (
	student_id INT PRIMARY KEY,
	student_name VARCHAR(100),
	course VARCHAR(50)	
);

INSERT INTO student_2026 (student_id, student_name, course)
	VALUES (1, 'Avinash', 'Data Analyst'),
          (2, 'Ankit', 'Data Analyst'),
		  (3, 'Karan', 'Software Engineer'),
		  (4, 'Harsh', 'Data Analyst'),
		  (5, 'Umesh', 'HR Manager');

SELECT * FROM student_2026;

DROP TABLE IF EXISTS student_2027;
CREATE TABLE student_2027 (
	student_id INT PRIMARY KEY,
	student_name VARCHAR(100),
	course VARCHAR(50)	
);

INSERT INTO student_2027 (student_id, student_name, course)
	VALUES (1, 'Avinash', 'Data Analyst'), -- same as student_2026
          (2, 'Ankit', 'Data Analyst'),  -- same as student_2026
		  (6, 'Karanveer pal', 'Software Engineer'),
		  (7, 'Harsh singh', 'Data Analyst'),
		  (8, 'Umesh kumar', 'HR Manager');
		  
SELECT * FROM student_2027;


-- UNION -- Combines results, remove duplicates.

SELECT student_name, course
FROM student_2026
UNION 
SELECT student_name, course
FROM student_2027;


-- UNION ALL -- Combines result, keeps duplicates.


SELECT student_name, course
FROM student_2026
UNION ALL
SELECT student_name, course
FROM student_2027;

-- INTERSECT -- Returns comman  results in both tables.

SELECT student_name, course
FROM student_2026
INTERSECT
SELECT student_name, course
FROM student_2027;

-- EXCEPT -- Returns results in the first table but not in the second.

SELECT student_name, course
FROM student_2026
EXCEPT
SELECT student_name, course
FROM student_2027;