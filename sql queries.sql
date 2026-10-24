select * from product;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID FRAME_TYPE
----------- ---------- --------------------------------------------------
     PRICE      STOCK POWER_COMP
---------- ---------- ----------
       201
Classic Eyeglasses
          1        101 Full Frame
      1200         50 Yes


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID FRAME_TYPE
----------- ---------- --------------------------------------------------
     PRICE      STOCK POWER_COMP
---------- ---------- ----------
       202
Stylish Sunglasses
          2        102 Rimless
      1500         30 No


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID FRAME_TYPE
----------- ---------- --------------------------------------------------
     PRICE      STOCK POWER_COMP
---------- ---------- ----------
       203
Reading Glasses
          1        103 Half Frame
       800         45 Yes


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID FRAME_TYPE
----------- ---------- --------------------------------------------------
     PRICE      STOCK POWER_COMP
---------- ---------- ----------
       204
Contact Lenses
          3        104 None
      1000         25 Yes


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID FRAME_TYPE
----------- ---------- --------------------------------------------------
     PRICE      STOCK POWER_COMP
---------- ---------- ----------
       205
Blue Light Glasses
          1        105 Full Frame
      1300         60 Yes


select product_id, product_name, price from product;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       201
Classic Eyeglasses
      1200

       202
Stylish Sunglasses
      1500

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------

       203
Reading Glasses
       800

       204
Contact Lenses

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
      1000

       205
Blue Light Glasses
      1300


select * from product where price < 1000;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID FRAME_TYPE
----------- ---------- --------------------------------------------------
     PRICE      STOCK POWER_COMP
---------- ---------- ----------
       203
Reading Glasses
          1        103 Half Frame
       800         45 Yes


select * from product where price > 1000;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID FRAME_TYPE
----------- ---------- --------------------------------------------------
     PRICE      STOCK POWER_COMP
---------- ---------- ----------
       201
Classic Eyeglasses
          1        101 Full Frame
      1200         50 Yes


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID FRAME_TYPE
----------- ---------- --------------------------------------------------
     PRICE      STOCK POWER_COMP
---------- ---------- ----------
       202
Stylish Sunglasses
          2        102 Rimless
      1500         30 No


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID FRAME_TYPE
----------- ---------- --------------------------------------------------
     PRICE      STOCK POWER_COMP
---------- ---------- ----------
       205
Blue Light Glasses
          1        105 Full Frame
      1300         60 Yes

 select * from product where price > 100;

 PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID FRAME_TYPE
----------- ---------- --------------------------------------------------
     PRICE      STOCK POWER_COMP
---------- ---------- ----------
       201
Classic Eyeglasses
          1        101 Full Frame
      1200         50 Yes


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID FRAME_TYPE
----------- ---------- --------------------------------------------------
     PRICE      STOCK POWER_COMP
---------- ---------- ----------
       202
Stylish Sunglasses
          2        102 Rimless
      1500         30 No


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID FRAME_TYPE
----------- ---------- --------------------------------------------------
     PRICE      STOCK POWER_COMP
---------- ---------- ----------
       203
Reading Glasses
          1        103 Half Frame
       800         45 Yes


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID FRAME_TYPE
----------- ---------- --------------------------------------------------
     PRICE      STOCK POWER_COMP
---------- ---------- ----------
       204
Contact Lenses
          3        104 None
      1000         25 Yes


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID FRAME_TYPE
----------- ---------- --------------------------------------------------
     PRICE      STOCK POWER_COMP
---------- ---------- ----------
       205
Blue Light Glasses
          1        105 Full Frame
      1300         60 Yes

SELECT product_name, product_id, price
FROM product
ORDER BY price ASC;

PRODUCT_NAME
--------------------------------------------------------------------------------
PRODUCT_ID      PRICE
---------- ----------
Reading Glasses
       203        800

Contact Lenses
       204       1000

Classic Eyeglasses
       201       1200


PRODUCT_NAME
--------------------------------------------------------------------------------
PRODUCT_ID      PRICE
---------- ----------
Blue Light Glasses
       205       1300

Stylish Sunglasses
       202       1500

SELECT product_name, product_id, price
FROM product
ORDER BY price DESC;

PRODUCT_NAME
--------------------------------------------------------------------------------
PRODUCT_ID      PRICE
---------- ----------
Stylish Sunglasses
       202       1500

Blue Light Glasses
       205       1300

Classic Eyeglasses
       201       1200


PRODUCT_NAME
--------------------------------------------------------------------------------
PRODUCT_ID      PRICE
---------- ----------
Contact Lenses
       204       1000

Reading Glasses
       203        800

select distinct(price) from product;

     PRICE
----------
      1200
      1500
       800
      1000
      1300

select * from category;

CATEGORY_ID
-----------
CATEGORY_NAME
--------------------------------------------------------------------------------
DESCRIPTION
--------------------------------------------------------------------------------
          1
Eyeglasses
Prescription and non-prescription eyeglasses

          2
Sunglasses
Stylish and protective sunglasses

CATEGORY_ID
-----------
CATEGORY_NAME
--------------------------------------------------------------------------------
DESCRIPTION
--------------------------------------------------------------------------------

          3
Computer Glasses
Blue light blocking glasses for screen use

          4
Kids Glasses

CATEGORY_ID
-----------
CATEGORY_NAME
--------------------------------------------------------------------------------
DESCRIPTION
--------------------------------------------------------------------------------
Eyewear specially designed for children

          5
Eco-Friendly Frames
Sustainable eyewear made from recycled and natural materials

select * from product where category_id = 1;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID FRAME_TYPE
----------- ---------- --------------------------------------------------
     PRICE      STOCK POWER_COMP
---------- ---------- ----------
       201
Classic Eyeglasses
          1        101 Full Frame
      1200         50 Yes


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID FRAME_TYPE
----------- ---------- --------------------------------------------------
     PRICE      STOCK POWER_COMP
---------- ---------- ----------
       203
Reading Glasses
          1        103 Half Frame
       800         45 Yes


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID   BRAND_ID FRAME_TYPE
----------- ---------- --------------------------------------------------
     PRICE      STOCK POWER_COMP
---------- ---------- ----------
       205
Blue Light Glasses
          1        105 Full Frame
      1300         60 Yes

select * from customer;

CUSTOMER_ID CUSTOMER_NAME
----------- --------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE_NO        DATE_OF_B
--------------- ---------
ADDRESS
--------------------------------------------------------------------------------
          1 Arun Kumar
arun@gmail.com
9876543210      12-AUG-04
Chennai


CUSTOMER_ID CUSTOMER_NAME
----------- --------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE_NO        DATE_OF_B
--------------- ---------
ADDRESS
--------------------------------------------------------------------------------
          2 Priya
priya@gmail.com
9876543211      20-FEB-05
Madurai


CUSTOMER_ID CUSTOMER_NAME
----------- --------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE_NO        DATE_OF_B
--------------- ---------
ADDRESS
--------------------------------------------------------------------------------
          3 Karthik
karthik@gmail.com
9876543212      05-NOV-04
Coimbatore


CUSTOMER_ID CUSTOMER_NAME
----------- --------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE_NO        DATE_OF_B
--------------- ---------
ADDRESS
--------------------------------------------------------------------------------
          4 Divya
divya@gmail.com
9876543213      18-JUL-05
Salem


CUSTOMER_ID CUSTOMER_NAME
----------- --------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE_NO        DATE_OF_B
--------------- ---------
ADDRESS
--------------------------------------------------------------------------------
          5 Vignesh
vignesh@gmail.com
9876543214      25-MAR-04
Trichy


CUSTOMER_ID CUSTOMER_NAME
----------- --------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE_NO        DATE_OF_B
--------------- ---------
ADDRESS
--------------------------------------------------------------------------------
          6 Keerthana
keerthana@gmail.com
9876543215      10-SEP-05
Erode


CUSTOMER_ID CUSTOMER_NAME
----------- --------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE_NO        DATE_OF_B
--------------- ---------
ADDRESS
--------------------------------------------------------------------------------
          7 Rahul
rahul@gmail.com
9876543216      30-DEC-04
Tirunelveli


CUSTOMER_ID CUSTOMER_NAME
----------- --------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE_NO        DATE_OF_B
--------------- ---------
ADDRESS
--------------------------------------------------------------------------------
          8 Nandhini
nandhini@gmail.com
9876543217      14-MAY-05
Thanjavur


CUSTOMER_ID CUSTOMER_NAME
----------- --------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE_NO        DATE_OF_B
--------------- ---------
ADDRESS
--------------------------------------------------------------------------------
          9 Sanjay
sanjay@gmail.com
9876543218      22-JUN-04
Vellore


CUSTOMER_ID CUSTOMER_NAME
----------- --------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE_NO        DATE_OF_B
--------------- ---------
ADDRESS
--------------------------------------------------------------------------------
         10 Harini
harini@gmail.com
9876543219      08-JAN-05
Chengalpattu


10 rows selected.

select * from customer where customer_id = 1;

CUSTOMER_ID CUSTOMER_NAME
----------- --------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE_NO        DATE_OF_B
--------------- ---------
ADDRESS
--------------------------------------------------------------------------------
          1 Arun Kumar
arun@gmail.com
9876543210      12-AUG-04
Chennai

SELECT product_name, product_id, price
FROM product
WHERE price > 1000
AND category_id = 2;

PRODUCT_NAME
--------------------------------------------------------------------------------
PRODUCT_ID      PRICE
---------- ----------
Stylish Sunglasses
       202       1500


SELECT product_name, product_id, price
FROM product
WHERE price > 1000
OR category_id = 2;

PRODUCT_NAME
--------------------------------------------------------------------------------
PRODUCT_ID      PRICE
---------- ----------
Classic Eyeglasses
       201       1200

Stylish Sunglasses
       202       1500

Blue Light Glasses
       205       1300

SELECT product_name, product_id, price
FROM product
WHERE category_id IN (1, 2, 3);

PRODUCT_NAME
--------------------------------------------------------------------------------
PRODUCT_ID      PRICE
---------- ----------
Classic Eyeglasses
       201       1200

Stylish Sunglasses
       202       1500

Reading Glasses
       203        800


PRODUCT_NAME
--------------------------------------------------------------------------------
PRODUCT_ID      PRICE
---------- ----------
Contact Lenses
       204       1000

Blue Light Glasses
       205       1300

SELECT product_name, product_id, price
FROM product
WHERE price BETWEEN 1000 AND 5000;

PRODUCT_NAME
--------------------------------------------------------------------------------
PRODUCT_ID      PRICE
---------- ----------
Classic Eyeglasses
       201       1200

Stylish Sunglasses
       202       1500

Contact Lenses
       204       1000


PRODUCT_NAME
--------------------------------------------------------------------------------
PRODUCT_ID      PRICE
---------- ----------
Blue Light Glasses
       205       1300

SELECT product_name, product_id, price
FROM product
ORDER BY price ASC;

PRODUCT_NAME
--------------------------------------------------------------------------------
PRODUCT_ID      PRICE
---------- ----------
Reading Glasses
       203        800

Contact Lenses
       204       1000

Classic Eyeglasses
       201       1200


PRODUCT_NAME
--------------------------------------------------------------------------------
PRODUCT_ID      PRICE
---------- ----------
Blue Light Glasses
       205       1300

Stylish Sunglasses
       202       1500

SELECT
    c.Customer_ID,
    c.Customer_Name,
    o.Order_ID,
    o.Order_Date,
    o.Total_Amount
FROM Customer c
JOIN Orders o
    ON c.Customer_ID = o.Customer_ID
ORDER BY o.Order_Date DESC;

CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT TOTAL_AMOUNT
--------- ------------
         10 Harini                                                    110
29-SEP-26         3999

          9 Sanjay                                                    109
28-SEP-26         2699

          8 Nandhini                                                  108
27-SEP-26         1799


CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT TOTAL_AMOUNT
--------- ------------
          7 Rahul                                                     107
26-SEP-26         2199

          6 Keerthana                                                 106
25-SEP-26         1299

          5 Vignesh                                                   105
24-SEP-26         3499


CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT TOTAL_AMOUNT
--------- ------------
          4 Divya                                                     104
23-SEP-26         1599

          3 Karthik                                                   103
22-SEP-26         2999

          2 Priya                                                     102
21-SEP-26         1899


CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT TOTAL_AMOUNT
--------- ------------
          1 Arun Kumar                                                101
20-SEP-26         2499


10 rows selected.

SELECT
    oi.Order_ID,
    oi.Product_ID,
    p.Product_Name,
    oi.Quantity,
    oi.Price AS Unit_Price,
    (oi.Quantity * oi.Price) AS Subtotal
FROM Order_Item oi
JOIN Product p
    ON oi.Product_ID = p.Product_ID
ORDER BY Subtotal DESC;

 ORDER_ID PRODUCT_ID
---------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
       110        205
Blue Light Glasses
         2       1300       2600

       101        201
Classic Eyeglasses
         2       1200       2400

  ORDER_ID PRODUCT_ID
---------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------

       108        203
Reading Glasses
         3        800       2400

       106        201
Classic Eyeglasses

  ORDER_ID PRODUCT_ID
---------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
         2       1200       2400

       103        203
Reading Glasses
         2        800       1600

       102        202

  ORDER_ID PRODUCT_ID
---------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
Stylish Sunglasses
         1       1500       1500

       107        202
Stylish Sunglasses
         1       1500       1500


  ORDER_ID PRODUCT_ID
---------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
       105        205
Blue Light Glasses
         1       1300       1300

       109        204
Contact Lenses
         1       1000       1000

  ORDER_ID PRODUCT_ID
---------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------

       104        204
Contact Lenses
         1       1000       1000


10 rows selected.

```sql
SELECT
    c.Customer_ID,
    c.Customer_Name,
    COUNT(o.Order_ID) AS Total_Orders
FROM Customer c
LEFT JOIN Orders o
    ON c.Customer_ID = o.Customer_ID
GROUP BY
    c.Customer_ID,
    c.Customer_Name
ORDER BY Total_Orders DESC;

CUSTOMER_ID CUSTOMER_NAME                                      TOTAL_ORDERS
----------- -------------------------------------------------- ------------
          1 Arun Kumar                                            1
          2 Priya                                                 1
          3 Karthik                                               1
          4 Divya                                                 1
         10 Harini                                                1
          6 Keerthana                                             1
          7 Rahul                                                 1
          8 Nandhini                                              1
          9 Sanjay                                                1
          5 Vignesh                                               1

10 rows selected.

```sql
SELECT
    c.Customer_ID,
    c.Customer_Name,
    SUM(o.Total_Amount) AS Total_Purchase_Amount
FROM Customer c
JOIN Orders o
    ON c.Customer_ID = o.Customer_ID
GROUP BY
    c.Customer_ID,
    c.Customer_Name
ORDER BY Total_Purchase_Amount DESC;

CUSTOMER_ID CUSTOMER_NAME
----------- --------------------------------------------------
TOTAL_PURCHASE_AMOUNT
---------------------
         10 Harini
                 3999

          5 Vignesh
                 3499

          3 Karthik
                 2999


CUSTOMER_ID CUSTOMER_NAME
----------- --------------------------------------------------
TOTAL_PURCHASE_AMOUNT
---------------------
          9 Sanjay
                 2699

          1 Arun Kumar
                 2499

          7 Rahul
                 2199


CUSTOMER_ID CUSTOMER_NAME
----------- --------------------------------------------------
TOTAL_PURCHASE_AMOUNT
---------------------
          2 Priya
                 1899

          8 Nandhini
                 1799

          4 Divya
                 1599


CUSTOMER_ID CUSTOMER_NAME
----------- --------------------------------------------------
TOTAL_PURCHASE_AMOUNT
---------------------
          6 Keerthana
                 1299


10 rows selected.
