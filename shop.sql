CREATE TABLE "category" (
    category_id SERIAL PRIMARY KEY,
    category_title VARCHAR(100) NOT NULL
    );

INSERT INTO "category" (category_title) VALUES ('Smartphones'), ('Tablets');

CREATE TABLE "item" (
    item_id SERIAL PRIMARY KEY,
    category_id INTEGER NOT NULL,
    item_title VARCHAR(100) NOT NULL,
    item_price NUMERIC(8, 2) NOT NULL
    );

INSERT INTO "item" (category_id, item_title, item_price) VALUES
    (1, 'SAMSUNG', 1.0),
    (1, 'IPHONE', 1.0),
    (2, 'ASUS', 1.0);

ALTER TABLE "category" ALTER COLUMN category_title SET NOT NULL;

UPDATE "item" SET item_price = 3.5 WHERE item_id = 1;

UPDATE item SET item_price = item_price * 1.1;

INSERT INTO item (category_id, item_title, item_price) VALUES (1, 'IPHONE', 1.0);

SELECT * FROM item ORDER BY item_title;

SELECT * FROM item ORDER BY item_price DESC;

INSERT INTO item (category_id, item_title, item_price) VALUES
    (2, 'LENOVO', 1.00),
    (1, 'XIAOMI', 2.00),
    (2, 'IPAD', 3.0);

SELECT * FROM item ORDER BY item_price DESC LIMIT 3;

SELECT * FROM item ORDER BY item_price LIMIT 3;

SELECT * FROM item ORDER BY item_price DESC LIMIT 3 OFFSET 3;

SELECT item_title FROM item ORDER BY item_price DESC LIMIT 1;

SELECT item_title FROM item ORdER BY item_price LIMIT 1;

SELECT COUNT(item_id) FROM item;

SELECT AVG(item_price) FROM item;# SQL
