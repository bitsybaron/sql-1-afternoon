CREATE TABLE person (
  person_id SERIAL PRIMARY KEY,
  name VARCHAR(200),
  age INT,
  height INT,
  city VARCHAR(200),
  favorite_color TEXT
);

INSERT INTO person (name, age, height, city, favorite_color)
VALUES 
('Brenna', 29, 650, 'Pocatello', 'green'),
('Lizzy', 26, 500, 'Ririe', 'pink'),
('Zucherman', 24, 435, 'Washington City', 'blue'),
('Chuzbert', 24, 3454, 'Rexburg', 'yellow'),
('Lucy', 6, 23, 'Ririe', 'purple');

SELECT * FROM person ORDER BY height DESC;

SELECT * FROM person ORDER BY height ASC;

SELECT * FROM person ORDER BY age DESC;

SELECT * FROM person WHERE age > 20;

SELECT * FROM person WHERE age = 18;

SELECT * FROM person WHERE age < 20 OR age > 30;

SELECT * FROM person WHERE age != 27;

SELECT * FROM person WHERE favorite_color != 'red';

SELECT * FROM person WHERE favorite_color != 'red' AND favorite_color != 'blue';

SELECT * FROM person WHERE favorite_color = 'orange' OR favorite_color = 'blue';

SELECT * FROM PERSON WHERE favorite_color IN ('orange', 'green', 'blue');

SELECT * FROM person WHERE favorite_color IN ('yellow', 'purple');


CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INT,
    product_name TEXT,
    product_price NUMERIC,
    quantity INT
);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES
(1, 'spaghetti', 35.66, 1),
(2, 'bread', 33.44, 2),
(3, 'strawbs', 2.44, 4),
(2, 'cheese', 4.55, 5),
(4, 'chocolate', 2.33, 3);

SELECT * FROM orders;

SELECT SUM(quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 2;

INSERT INTO artist (name)
VALUES 
('oliver'),
('tree'),
('olly');

SELECT * FROM artist ORDER BY name DESC LIMIT 10;

SELECT * FROM artist ORDER BY name ASC LIMIT 5;

SELECT * FROM artist WHERE name LIKE 'Black%';

SELECT * FROM artist WHERE name LIKE '%Black%';

SELECT first_name, last_name FROM employee WHERE city = 'Calgary'; 

SELECT MAX(birth_date) FROM employee;

SELECT MIN(birth_date) FROM employee;

SELECT * FROM employee WHERE reports_to = 2;

SELECT count(*) FROM employee WHERE city = 'Lethbridge';

SELECT count(*) FROM invoice WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT * FROM invoice WHERE total > 5;

SELECT count(*) FROM invoice WHERE total < 5;

SELECT * FROM invoice WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT avg(total) FROM invoice; 

SELECT SUM(total) FROM invoice;





