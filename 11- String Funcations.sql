
SELECT * from products;


-- Get all the categories in Uppercase
SELECT UPPER(category) AS Category_Capital
FROM products;


-- Get all the categories in Lowercase

SELECT LOWER(category) AS Category_Capital
FROM products;


-- Join Product_name adn category text with hypen.

SELECT CONCAT(product_name,'-',category) AS product_details
FROM products;


-- Extract the first 5 characters from product_name

SELECT SUBSTRING(product_name, 1,7) AS short_name
FROM products;

-- Count length

SELECT product_name, LENGTH(product_name) AS count_of_char
FROM products;


--Remove leading and trailing spaces from string

SELECT LENGTH(TRIM('  Monitor    ')) AS trimmed_text;
SELECT LENGTH('  Monitor    ') AS trimmed_text;

-- Replace the word "phone" with "device" in product names

SELECT REPLACE(product_name, 'phone', 'device') AS Updated
FROM products;

-- Get the first 3 characters from category

SELECT LEFT(category, 3) AS Category_Capital
FROM products;

-- Get the last 3 characters from category

SELECT RIGHT(category, 3) AS Category_Capital
FROM products;




