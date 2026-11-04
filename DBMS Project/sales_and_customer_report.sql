SELECT COUNT(Order_ID) AS Total_Orders
FROM Orders;


TOTAL_ORDERS
------------
          10

SELECT SUM(Total_Amount) AS Total_Sales
FROM Orders;

TOTAL_SALES
-----------
      24490

SELECT AVG(Total_Amount) AS Average_Order
FROM Orders;

AVERAGE_ORDER
-------------
         2449


SELECT MIN(Total_Amount) AS Minimum_Order
FROM Orders;

MINIMUM_ORDER
-------------
         1299


SELECT MAX(Total_Amount) AS Maximum_Order
FROM Orders;

MAXIMUM_ORDER
-------------
         3999

SELECT
    COUNT(Order_ID) AS Total_Orders,
    SUM(Total_Amount) AS Total_Sales,
    AVG(Total_Amount) AS Average_Order,
    MIN(Total_Amount) AS Minimum_Order,
    MAX(Total_Amount) AS Maximum_Order
FROM Orders;

TOTAL_ORDERS TOTAL_SALES AVERAGE_ORDER MINIMUM_ORDER MAXIMUM_ORDER
------------ ----------- ------------- ------------- -------------
          10       24490          2449          1299          3999

SELECT
    C.Customer_ID,
    C.Customer_Name,
    SUM(O.Total_Amount) AS Total_Purchase
FROM Customer C
JOIN Orders O
ON C.Customer_ID = O.Customer_ID
GROUP BY C.Customer_ID, C.Customer_Name
ORDER BY Total_Purchase DESC;

CUSTOMER_ID CUSTOMER_NAME             TOTAL_PURCHASE
----------- ------------------------- --------------
         10 Harini                              3999
          5 Vignesh                             3499
          3 Karthik                             2999
          9 Sanjay                              2699
          1 Arun Kumar                          2499
          7 Rahul                               2199
          2 Priya                               1899
          8 Nandhini                            1799
          4 Divya                               1599
          6 Keerthana                           1299

10 rows selected.

SELECT
    C.Customer_ID,
    C.Customer_Name,
    SUM(O.Total_Amount) AS Total_Purchase
FROM Customer C
JOIN Orders O
ON C.Customer_ID = O.Customer_ID
GROUP BY C.Customer_ID, C.Customer_Name
ORDER BY Total_Purchase DESC;

CUSTOMER_ID CUSTOMER_NAME               TOTAL_PURCHASE
----------- ------------------------------------------------- --------------
         10 Harini                                3999
          5 Vignesh                               3499
          3 Karthik                               2999
          9 Sanjay                                2699
          1 Arun Kumar                            2499
          7 Rahul                                 2199
          2 Priya                                 1899
          8 Nandhini                              1799
          4 Divya                                 1599
          6 Keerthana                             1299

10 rows selected.

SELECT
    P.Product_ID,
    P.Product_Name,
    SUM(OI.Quantity) AS Total_Quantity_Sold
FROM Product P
JOIN Order_Item OI
ON P.Product_ID = OI.Product_ID
GROUP BY P.Product_ID, P.Product_Name
ORDER BY Total_Quantity_Sold DESC;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY_SOLD
-------------------
       203
Reading Glasses
                  5

       201
Classic Eyeglasses
                  4

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY_SOLD
-------------------

       205
Blue Light Glasses
                  3

       202
Stylish Sunglasses

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY_SOLD
-------------------
                  2

       204
Contact Lenses
                  2


SELECT
    P.Product_ID,
    P.Product_Name,
    SUM(OI.Quantity) AS Total_Quantity_Sold,
    SUM(OI.Quantity * P.Price) AS Total_Sales
FROM Product P
JOIN Order_Item OI
ON P.Product_ID = OI.Product_ID
GROUP BY P.Product_ID, P.Product_Name
ORDER BY Total_Sales DESC;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY_SOLD TOTAL_SALES
------------------- -----------
       201
Classic Eyeglasses
                  4        4800

       203
Reading Glasses
                  5        4000

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY_SOLD TOTAL_SALES
------------------- -----------

       205
Blue Light Glasses
                  3        3900

       202
Stylish Sunglasses

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY_SOLD TOTAL_SALES
------------------- -----------
                  2        3000

       204
Contact Lenses
                  2        2000


SELECT
    C.Category_ID,
    C.Category_Name,
    SUM(OI.Quantity) AS Total_Quantity_Sold,
    SUM(OI.Quantity * P.Price) AS Total_Sales
FROM Category C
JOIN Product P
ON C.Category_ID = P.Category_ID
JOIN Order_Item OI
ON P.Product_ID = OI.Product_ID
GROUP BY C.Category_ID, C.Category_Name
ORDER BY Total_Sales DESC;

CATEGORY_ID
-----------
CATEGORY_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY_SOLD TOTAL_SALES
------------------- -----------
          1
Eyeglasses
                 12       12700

          2
Sunglasses
                  2        3000

CATEGORY_ID
-----------
CATEGORY_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY_SOLD TOTAL_SALES
------------------- -----------

          3
Computer Glasses
                  2        2000


SELECT
    C.Customer_Name,
    O.Order_ID,
    P.Product_Name,
    CAT.Category_Name,
    OI.Quantity,
    (OI.Quantity * P.Price) AS Subtotal
FROM Customer C
JOIN Orders O
ON C.Customer_ID = O.Customer_ID
JOIN Order_Item OI
ON O.Order_ID = OI.Order_ID
JOIN Product P
ON OI.Product_ID = P.Product_ID
JOIN Category CAT
ON P.Category_ID = CAT.Category_ID
ORDER BY O.Order_ID;


CUSTOMER_NAME                                        ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL
---------- ----------
Arun Kumar                                             101
Classic Eyeglasses
Eyeglasses
         2       2400


CUSTOMER_NAME                                        ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL
---------- ----------
Priya                                                  102
Stylish Sunglasses
Sunglasses
         1       1500


CUSTOMER_NAME                                        ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL
---------- ----------
Karthik                                                103
Reading Glasses
Eyeglasses
         2       1600


CUSTOMER_NAME                                        ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL
---------- ----------
Divya                                                  104
Contact Lenses
Computer Glasses
         1       1000


CUSTOMER_NAME                                        ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL
---------- ----------
Vignesh                                                105
Blue Light Glasses
Eyeglasses
         1       1300


CUSTOMER_NAME                                        ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL
---------- ----------
Keerthana                                              106
Classic Eyeglasses
Eyeglasses
         2       2400


CUSTOMER_NAME                                        ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL
---------- ----------
Rahul                                                  107
Stylish Sunglasses
Sunglasses
         1       1500


CUSTOMER_NAME                                        ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL
---------- ----------
Nandhini                                               108
Reading Glasses
Eyeglasses
         3       2400


CUSTOMER_NAME                                        ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL
---------- ----------
Sanjay                                                 109
Contact Lenses
Computer Glasses
         1       1000


CUSTOMER_NAME                                        ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME
--------------------------------------------------------------------------------
  QUANTITY   SUBTOTAL
---------- ----------
Harini                                                 110
Blue Light Glasses
Eyeglasses
         2       2600


10 rows selected.