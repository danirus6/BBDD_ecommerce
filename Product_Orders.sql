-- Active: 1700501295455@@127.0.0.1@6666@ecommerce


INSERT INTO products_orders (`idOrders`,`idProducts`, quantity) VALUES(1,1,2), (2,2,1);

SELECT products.name FROM products INNER JOIN products_orders ON products_orders.idProducts = products.idproducts;