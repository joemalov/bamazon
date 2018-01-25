DROP DATABASE IF EXISTS bamazonDB;
CREATE DATABASE bamazonDB;

USE bamazonDB;

CREATE TABLE products (
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(100) NOT NULL,
  department_name VARCHAR(45) NOT NULL,
  price DECIMAL (10, 2) NULL,
  stock_quantity INT NULL,
  PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("ipod", "electronics", 250, 20);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("macbook", "electronics", 550, 10);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("electric guitar", "instruments", 800, 5);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("jeep cherokee", "auto", 12500, 1);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("george foreman grill", "home goods", 150, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("crockpot", "home goods", 70, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("keurig k-cup", "kitchen", 25, 250);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("mac and cheese", "kitchen", 12, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("snowboard", "sports", 200, 10);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("soccer ball", "sports", 45, 60);