-- Active: 1700501295455@@127.0.0.1@6666@ecommerce

SELECT * FROM reviews;

INSERT INTO reviews (review)
VALUES (
        "El producto es muy bueno, estoy encantado."
    ), ("nah, de locos"), (
        "esta muy bien para pasar el rato"
    ), (
        "Es lo peor que he jugado nunca"
    ), ("ª");

UPDATE reviews
SET
    review = "amigo date cuenta"
WHERE `idReviews` = 5;

DELETE FROM reviews;

ALTER TABLE reviews AUTO_INCREMENT = 1;

UPDATE reviews
SET
    id_products = CASE
        WHEN `idReviews` = 1 THEN 1
        WHEN `idReviews` = 2 THEN 2
        WHEN `idReviews` = 3 THEN 3
        WHEN `idReviews` = 4 THEN 4
        WHEN `idReviews` = 5 THEN 5
    END;

SELECT
    products.name,
    reviews.review
FROM reviews
    INNER JOIN products ON reviews.`idReviews` = products.idproducts;

DELETE FROM reviews WHERE `idReviews` = 1;