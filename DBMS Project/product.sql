-- Create Product Table

CREATE TABLE Product (
    Product_ID NUMBER PRIMARY KEY,
    Product_Name VARCHAR2(100) NOT NULL,
    Category_ID NUMBER,
    Brand_ID NUMBER,
    Frame_Type VARCHAR2(50),
    Price NUMBER(10,2),
    Stock NUMBER,
    Power_Compatible VARCHAR2(10),

    CONSTRAINT fk_product_category
        FOREIGN KEY (Category_ID)
        REFERENCES Category(Category_ID),

    CONSTRAINT fk_product_brand
        FOREIGN KEY (Brand_ID)
        REFERENCES Brand(Brand_ID)
);
Table created.

INSERT INTO Product
VALUES (201, 'Classic Eyeglasses', 1, 101, 'Full Frame', 1200, 50, 'Yes');
1 row created.

INSERT INTO Product
VALUES (202, 'Stylish Sunglasses', 2, 102, 'Rimless', 1500, 30, 'No');
1 row created.
  
INSERT INTO Product
VALUES (203, 'Reading Glasses', 1, 103, 'Half Frame', 800, 45, 'Yes');
1 row created.
  
INSERT INTO Product
VALUES (204, 'Contact Lenses', 3, 104, 'None', 1000, 25, 'Yes');
1 row created.
  
INSERT INTO Product
VALUES (205, 'Blue Light Glasses', 1, 105, 'Full Frame', 1300, 60, 'Yes');
1 row created.

SELECT * FROM Product;

SQL> SELECT * FROM Product;

PRODUCT_ID PRODUCT_NAME          CATEGORY_ID   BRAND_ID FRAME_TYPE     PRICE  STOCK POWER_COMPATIBLE
---------- -------------------- ----------- ---------- ------------- ------ ------ ----------------
       201 Classic Eyeglasses              1        101 Full Frame       1200     50 Yes
       202 Stylish Sunglasses              2        102 Rimless          1500     30 No
       203 Reading Glasses                 1        103 Half Frame        800     45 Yes
       204 Contact Lenses                  3        104 None              1000     25 Yes
       205 Blue Light Glasses              1        105 Full Frame       1300     60 Yes

5 rows selected.

COMMIT;

Commit complete.

