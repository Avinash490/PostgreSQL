-- CREATE TABLE 
CREATE TABLE users(
	user_id INT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	email VARCHAR(50) UNIQUE,
	age INTEGER CHECK (age >= 18),
	reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

-- INSERTING DATA INTO TABLE 
INSERT INTO users(user_id, name, email, age)
	VALUES (10101,'Avinash', 'aviansh@gamil.com', 25);

-- INSERTING ANOTHER TABLE
INSERT INTO users(user_id, name, email, age)
	VALUES (10102,'Ankit', 'ankit@gamil.com', 30);


SELECT * FROM users;