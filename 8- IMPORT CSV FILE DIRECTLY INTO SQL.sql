-- IMPORT CSV FILE DIRECT INTO SQL.

DROP TABLE IF EXISTS employee3;


CREATE TABLE employee3(
	employee_id INT PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	department VARCHAR(20),
	salary NUMERIC(10,2),
	jioning_date DATE,
	age INT
);


SELECT * FROM employee3;

-- IMPORT DIRECT CSV FILE 

CLICK DATABASE -> CLICK TABLES -> EMPLOYEE3 -> RIGHT CLICK -> IMPORT/EXPORT DATA -> GENERAL -> SELECT FILE -> GIVE FILE FORMAT   
																					OPTION -> HEADER ON 

																					