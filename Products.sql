-- Active: 1700501295455@@127.0.0.1@6666@ecommerce
SELECT * FROM products;
DELETE FROM products ;

ALTER TABLE products AUTO_INCREMENT = 1;
--Insert products--

INSERT INTO
    products (name, id_category)
VALUES ("Baldurs Gate 3", 1), ("Star Citizen", 1), ("Distrion", 2), ("7DS", 1), ("ILLENIUM", 2);

-- Update Products --

UPDATE products SET name = "Donramon" WHERE idproducts = 1;

--ADD COLUMN PRICE--

ALTER TABLE products ADD COLUMN price int COMMENT '';

--INSERT DATE TO PRICES--

INSERT INTO products (price) VALUES(10),(20),(30),(40),(50);

--LO DE ARRIBA ESTA MAL ASI QUE BORRO--

DELETE FROM `products` WHERE `idproducts` IN (6,7,8,9,10) 

--AHORA BIEN--

UPDATE products SET price = 10 WHERE idproducts IN (2,3,4,5);

--UPDATE PRICES--

UPDATE products SET price = 50 WHERE idproducts = 1;

--OBTENER PRODUCTOS SUPERIOR 20€--

SELECT * FROM products WHERE price > 20;

--DESCENDENT

SELECT * FROM products ORDER BY name DESC;

--2.2.3.3

SELECT
    products.name,
    categories.name
FROM products
    INNER JOIN categories ON products.id_category = categories.idcategories;

--2.2.3.5

SELECT
    products.name,
    categories.name
FROM products
    INNER JOIN categories ON products.id_category = categories.idcategories
WHERE products.id_category = 1;

--EXTRA

DELETE FROM products where idproducts = 5;


SELECT
    products.name,
    reviews.review,
    categories.name
FROM products
    INNER JOIN reviews ON products.idproducts = reviews.idreviews
    INNER JOIN categories ON products.idproducts = categories.idcategories;

