-- Active: 1700501295455@@127.0.0.1@6666@ecommerce
SELECT * from orders;

DELETE FROM orders;

ALTER TABLE orders AUTO_INCREMENT = 1;

INSERT INTO
    orders (name, `idUsers`)
VALUES ('Pedido 1', 1), ('Pedido 2', 2), ('Pedido 3', 3), ('Pedido 4', 4), ('Pedido 5', 5);
