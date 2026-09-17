SELECT * from products;


/* 1. CASE Function – Categorizing Based on Conditions
 We will categorize products into price ranges:

Expensive if the price is greater than or equal to 50,000.
Moderate if the price is between 10,000 and 49,999.
Affordable if the price is less than 10,000.
*/

SELECT product_name, price,
	CASE 
		WHEN price>=50000 THEN 'Expensive'
		WHEN price>=10000 AND price<=49999 THEN 'Moderate'
		ELSE 'Affordable'
	END AS PRICE_CATEGORY
FROM products;

-- ASSSIGNMENT ON CASE FUNCTION --- 

	
/* 2. CASE with AND & OR Operators – Stock Status
We will classify products based on quantity available:

In Stock if quantity is 10 or more.
Limited Stock if quantity is between 5 and 9.
Out of Stock Soon if quantity is less than 5.
*/

SELECT product_name, quantity,
	CASE
		WHEN quantity>=10 THEN 'IN_STOCK'
		WHEN quantity>=5 AND quantity<=9 THEN 'LIMITED_STOCK'
		ELSE 'OUT_OF_STOCK_SOON'
		END AS STOCK_STATUS
FROM products;

SELECT product_name, quantity, 
		CASE
			WHEN quantity >=10 THEN 'InStock'
			WHEN quantity BETWEEN 5 AND 9 THEN 'Limited stock'
			ELSE 'Out of stock soon'
		END AS stock_status
FROM products;


/* 3. CASE with LIKE Operator – Category Classification
Check if the category name contains "Electronics" or "Furniture" using LIKE.
*/

SELECT product_name, category, 
		CASE
			WHEN category LIKE 'Electronics%' THEN 'Electronic Item'
			WHEN category LIKE 'Furniture%' THEN 'Furniture Item'
			ELSE 'Accessory Item'
		END AS category_Status
FROM products;
		

