-- Drop the table if it already exists.
DROP TABLE IF EXISTS users;

-- Create the users table.

CREATE TABLE IF NOT EXISTS users (
	user_id SERIAL PRIMARY KEY ,
	user_name VARCHAR(110) NOT NULL,
	email VARCHAR(100)  NOT NULL,
	age INT,
	city VARCHAR(100)

);

SELECT * FROM users;

-- insert 5 sample users into the users table.
INSERT INTO users ( user_name , email, age, city)
	VALUES
			('Avinash', 'aviansh@gamil.com', 25, 'UP'),
			('Ankit', 'ankit@gamil.com', 30, 'Mumbai'),
		    ('rahul', 'rahul@gmail.com', 35, 'Delhi'),
		    ('karan', 'karan@gmail.com', 23, 'MP'),
		   ('Abhishek', 'abhishek@gmail.com', 21, 'Pune');

UPDATE users 
SET age=22
WHERE user_name='rahul';


SELECT * FROM users;


SELECT * FROM users ORDER BY user_id ASC;


UPDATE users 
SET city ='Chennai'
WHERE age >=25;


UPDATE users
SET age=25, city='kolkata'
WHERE user_name = 'Ankit';


UPDATE users 
SET age = age+1
WHERE email LIKE '%@gmail.com';


-- TO RENAME THE USERNAME COLUMN.

ALTER TABLE users 
RENAME COLUMN user_name to username;

SELECT * FROM users ORDER BY user_id ASC;

-- TO CHANGE THE AGE COLUMN'S DATA TYPE FROM INT TO SMALLINT.

ALTER TABLE users 
ALTER COLUMN age TYPE SMALLINT;

SELECT * FROM users ORDER BY user_id ASC;


-- TO ADD NOT NULL CONSTRAINT TO CITY COLUMN.

ALTER TABLE users
ALTER COLUMN city SET NOT NULL;

SELECT * FROM users ORDER BY user_id ASC;

-- TO DROP CONSTRAINT TO AGE COLUMN.

ALTER TABLE users
DROP CONSTRAINT age;

SELECT * FROM users ORDER BY user_id ASC;

-- TO ADD CHECK CONSTRAINT TO AGE COLUMN.

ALTER TABLE users
ADD CONSTRAINT age CHECK(age>=20);

SELECT * FROM users ORDER BY user_id ASC;


INSERT INTO users ( username , email, age, city)
	VALUES
			('Avinash Pratap', 'aviansh@gamil.com', 29, 'UP');

-- CHANGE THE TABLE NAME.

ALTER TABLE users
RENAME TO customers;


SELECT * FROM customers ORDER BY user_id ASC;
