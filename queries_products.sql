-- Comments in SQL Start with dash-dash --
products_db=# INSERT INTO products (name, price, can_be_returned) VALUES ( 'chair', 44.00, false);
INSERT 0 1
--1
products_db=# INSERT INTO products (name, price, can_be_returned) VALUES ( 'stool', 25.99, true);
INSERT 0 1
--2
products_db=# INSERT INTO products (name, price, can_be_returned) VALUES ( 'table', 124.99, false);
INSERT 0 1
--3
SELECT * from products;
--4
SELECT name FROM products;
--5
SELECT name, price FROM products;
--6
INSERT INTO products (name, price, can_be_returned) VALUES ( 'applesauce', 4.49, false);
INSERT 0 1
--7
SELECT name FROM products WHERE can_be_returned = true;
--8
SELECT name FROM products WHERE price < 44.00;
--9
SELECT name FROM products WHERE price BETWEEN 22.50 AND 99.99;
--10
UPDATE products SET price =price-20;
--11
DELETE FROM products WHERE price < 25;
--12
UPDATE products SET price = price +20;
--13
UPDATE products SET can_be_returned = true;
--14