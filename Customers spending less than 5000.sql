CREATE TABLE customers (
         customer_id INT PRIMARY KEY, 
         customer_name VARCHAR(100)
     );
     CREATE TABLE orders (
         order_id INT PRIMARY KEY, 
         customer_id INT, 
         amount DECIMAL(10, 2)
     );
     INSERT INTO customers VALUES 
         (1, 'Rajesh'), 
         (2, 'Aditi'); 
     INSERT INTO orders VALUES 
         (1, 1, 1000.00), 
         (2, 1, 3000.00), 
         (3, 2, 4000.00);

SELECT * FROM CUSTOMERS
SELECT * FROM ORDERS


/*
Find customers who have spent less than ₹5000.
*/

SELECT C.CUSTOMER_NAME,
	   O.AMOUNT
FROM CUSTOMERS C
JOIN ORDERS O
ON C.CUSTOMER_ID = O.CUSTOMER_ID
WHERE O.AMOUNT < 5000