------------------------ UNIQUE
CREATE TABLE products(
    product_id INT,
    product_name VARCHAR(25) unique,
    price DECIMAL(4,2)
);

/*
ALTER TABLE products
ADD CONSTRAINT 
UNIQUE(product_name);
*/
INSERT INTO products
VALUES  (50,"hamburger",4.99),
        (51,"fries",3.80),
        (52,"soda",1.50),
        (53,"ice cream",2.10),
        -- what if we add a deplicated product_name 
        (55,"fries",3.40);


------------------------ NOT NULL

CREATE TABLE products(
    product_id INT,
    product_name VARCHAR(25) ,
    price DECIMAL(4,2) NOT NULL
);
/*
ALTER TABLE products
MODIFY price DECIMAL(4,2) NOT NULL;
*/

------------------------ DEFAULT
CREATE TABLE products(
    product_id INT,
    product_name VARCHAR(25) ,
    price DECIMAL(4,2) DEFAULT 0
);
ALTER TABLE products
ALTER price SET DEFAULT 0


INSERT INTO products(product_id, product_name)
VALUES  (56,"straw"),
        (57,"napkin"),
        (58,"fork"),
        (59,"spoon");
SELECT * FROM products;


------------------------ PRIMARY KEY
CREATE TABLE transactions(
    transaction_id INT PRIMARY KEY,
    amount DECIMAL(4.2)
);
SELECT * FROM transactions;

ALTER TABLE transactions
ADD CONSTRAINT
PRIMARY KEY(transaction_id);

SELECT * FROM transactions;

INSERT INTO transactions
VALUES (100,4.50);
------------------------ AUTO_INCREMENT
CREATE TABLE transactions(
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(6.2)
);
SELECT * FROM transactions;

------------------------ FOREIGN KEY