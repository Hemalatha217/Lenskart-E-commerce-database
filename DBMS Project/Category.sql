CREATE TABLE Category (
    Category_ID NUMBER PRIMARY KEY,
    Category_Name VARCHAR2(100) UNIQUE,
    Description VARCHAR2(255)
);
Table created.

INSERT INTO Category
VALUES (1, 'Eyeglasses', 'Prescription and non-prescription eyeglasses');
1 row created.
  
INSERT INTO Category
VALUES (2, 'Sunglasses', 'Stylish and protective sunglasses');
1 row created.

INSERT INTO Category
VALUES (3, 'Computer Glasses', 'Blue light blocking glasses for screen use');
1 row created.

INSERT INTO Category
VALUES (4, 'Kids Glasses', 'Eyewear specially designed for children'); 
1 row created.
  
INSERT INTO Category
VALUES (5, 'Eco-Friendly Frames', 'Sustainable eyewear made from recycled and natural materials');
1 row created.

SELECT * FROM Category;

CATEGORY_ID  CATEGORY_NAME        DESCRIPTION
-----------  -------------------  ---------------------------------------------
1            Eyeglasses           Prescription and non-prescription eyeglasses
2            Sunglasses           Stylish and protective sunglasses
3            Computer Glasses     Blue light blocking glasses for screen use
4            Kids Glasses         Eyewear specially designed for children
5            Eco-Friendly Frames  Sustainable eyewear made from recycled and
                                  natural materials

5 rows selected.

COMMIT;

Commit complete.
