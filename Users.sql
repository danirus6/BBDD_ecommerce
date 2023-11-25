-- Active: 1700501295455@@127.0.0.1@6666@ecommerce
SELECT * from users;

DELETE FROM users;

ALTER TABLE users AUTO_INCREMENT = 1;

INSERT INTO users (name)
VALUES ('DANI'), ('EDER'), ('Adrian'), ('Olatz'), ('IKER');

--2.2.3.4

SELECT users.name, orders.name
FROM users
    INNER JOIN orders ON users.idusers = orders.idusers = orders.`idOrders`;

--2.2.3.6

SELECT users.name, orders.name
FROM users
    INNER JOIN orders ON users.idusers = orders.`idOrders`
WHERE users.idusers = 1;




SELECT
    users.name,
    orders.`idOrders`,
    products.idproducts
FROM users
    INNER JOIN orders ON users.`idUsers` = orders.`idUsers`
    INNER JOIN products_orders ON orders.`idOrders` = products_orders.idOrders
    INNER JOIN products ON products_orders.idproducts = products.idproducts
WHERE users.`idUsers` = 1;

-- Reemplaza 1 con el ID del usuario que deseas consultar