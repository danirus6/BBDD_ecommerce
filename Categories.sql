-- Active: 1700501295455@@127.0.0.1@6666@ecommerce

SELECT * FROM categories;

DELETE FROM categories;

ALTER TABLE categories AUTO_INCREMENT = 1;

INSERT INTO categories (name) VALUES ("games"), ("music");