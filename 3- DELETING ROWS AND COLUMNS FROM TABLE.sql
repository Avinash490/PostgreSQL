CREATE TABLE employee2(
	employee_id INT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	position VARCHAR(50),
	department VARCHAR(50),
	hire_date DATE,
	salary NUMERIC(10,2)
); 

SELECT * FROM employee2;

INSERT INTO employee2(employee_id, name, position, department, hire_date, salary)
	VALUES (10101,'Avinash', 'Data Analyst', 'Data Science', '2026-08-02', 50000.00),
          (10102,'Ankit', 'Data Analyst', 'Data Science', '2026-05-02', 50000.00),
		  (10103,'Karan', 'Software Engineer', 'IT', '2025-08-02', 55000.00),
		  (10104,'Harsh', 'Data Analyst', 'Data Science', '2024-08-02', 40000.00),
		  (10105,'Umesh', 'HR Manager', 'Human Resources', '2023-08-02', 60000.00);


DELETE FROM employee2
WHERE employee_id=10104; /* DELETE FROM KE SATH WHERE KA USE EK ROW DELETE KRNE ME KRTE HAI */

ALTER TABLE employee2
DROP COLUMN hire_date;  /* ALTER TABLE KE SATH DROP KA USE EK COLUMN DELETE KRNE ME KRTE HAI */

DROP TABLE IF EXISTS employee3;/* DROP KA USE PURI TABLE DELETE KRNE ME BHI KRTE HAI --
                                  IF EXISTS USE ISLIYE KRTE HAI KI JIS TABLE YA DATABASE  
								  KA NAME DIYA HAI BO HO TO DELETE HO JAYE */
								  

DROP DATABASE IF EXISTS company2;/* DROP KA USE PURA DATABASE DELETE KRNE ME BHI KRTE HAI */




		  