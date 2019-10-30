DROP DATABASE IF EXISTS bamazon_DB;
CREATE DATABASE bamazon_DB;
USE bamazon_DB;

CREATE TABLE products(
    id INT NOT NULL
    product_name VARCHAR(100) NOT NULL,
    department_name VARCHAR(50) NOT NULL,
    price INT NOT NULL,
    stock_quantity INT NOT NULL
);
INSERT INTO products(id, product_name, department_name, price, stock_quantity) 
VALUES (0,"airpods", "electronics", 159, 1000);
 INSERT INTO products(id, product_name, department_name, price, stock_quantity) 
VALUES (1,"Macbook Air", "electronics", 1000, 2000);
INSERT INTO products(id, product_name, department_name, price, stock_quantity)
VALUES (2,"Macbook Pro", "electronics", 1700, 3000);
INSERT INTO products(id, product_name, department_name, price, stock_quantity)
VALUES (3,"iPhone Xs Max", "electronics", 1099, 500);
INSERT INTO products(id, product_name, department_name, price, stock_quantity)
VALUES (4,"iPhone Xs", "electronics", 999 , 300);
INSERT INTO products(id, product_name, department_name, price, stock_quantity)
VALUES (5,"iPhone Xr", "electronics", 749 , 100);
INSERT INTO products(id, product_name, department_name, price, stock_quantity)
VALUES (6,"Watch ", "electronics", 399, 30);
INSERT INTO products(id, product_name, department_name, price, stock_quantity)
VALUES (7,"backpack", "school", 30 , 10);
INSERT INTO products(id, product_name, department_name, price, stock_quantity) 
VALUES (8,"sweater", "clothing", 20 , 5);
INSERT INTO products(id, product_name, department_name, price, stock_quantity) 
VALUES (9,"keychain", "acessories", 2, 3);
