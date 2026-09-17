
SELECT * FROM products;

ALTER TABLE products
DROP COLUMN discount_price;


ALTER TABLE products
ADD COLUMN discount_price NUMERIC(10,2);


UPDATE products
SET discount_price = NULL
WHERE product_name IN ('Laptop', 'Desk');

UPDATE products
SET discount_price = price*0.9
WHERE product_name NOT IN ('Laptop','Desk'); 


SELECT product_name, price, discount_price
FROM  products;

SELECT product_name, price,
	COALESCE(discount_price, price) AS finle_price
FROM  products;

