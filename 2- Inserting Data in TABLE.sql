SELECT * FROM employee;

INSERT INTO employee(name, position, department, hire_date, salary)
	VALUES ('Avinash', 'Data Analyst', 'Data Science', '2026-08-02', 50000.00),
          ('Ankit', 'Data Analyst', 'Data Science', '2026-05-02', 50000.00),
		  ('Karan', 'Software Engineer', 'IT', '2025-08-02', 55000.00),
		  ('Harsh', 'Data Analyst', 'Data Science', '2024-08-02', 40000.00),
		  ('Umesh', 'HR Manager', 'Human Resources', '2023-08-02', 60000.00);

ALTER TABLE employee
RENAME COLUME postiion TO position  /* ISKA USE KISI BHI COLUMN KA RENAME KRNE ME KRTE HAI  */


TRUNCATE TABLE employee; /* ISKA USE HAAM ALL ROWS DELETE KRNE ME KRTE HAI */

TRUNCATE TABLE employee RESTART IDENTITY; /* ISSE BHI ALL ROWS DELETE HOTI PAR RESTART INDENTITY SE SERIAL NUMBER SAHI RHTE HAI */
		  