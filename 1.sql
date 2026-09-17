
DROP TABLE IF EXISTS employee;


CREATE TABLE employee(
	employee_id INT PRIMARY KEY,
	name VARCHAR(20) NOT NULL,
	email VARCHAR(20) UNIQUE,
	salary NUME(10,2) DEFAULT 30000,
	jioning_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	age INT CHECK (age>=18)
);


SELECT * FROM employee3;