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

