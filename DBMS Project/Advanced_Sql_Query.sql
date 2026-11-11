SELECT Order_ID, Customer_ID, Total_Amount
FROM Orders
WHERE Total_Amount >
      (SELECT AVG(Total_Amount)
       FROM Orders);

 ORDER_ID CUSTOMER_ID TOTAL_AMOUNT
---------- ----------- ------------
       101           1         2499
       103           3         2999
       105           5         3499
       109           9         2699
       110          10         3999

SELECT
    Product_ID,
    Product_Name,
    Price
FROM Product
WHERE Price >
      (SELECT AVG(Price)
       FROM Product);

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

       205
Blue Light Glasses
      1300

SELECT
    Product_ID,
    Product_Name,
    Price
FROM Product
WHERE Price <
      (SELECT AVG(Price)
       FROM Product);

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
      1000

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------

SELECT
    Customer_ID,
    SUM(Total_Amount) AS Total_Purchase
FROM Orders
GROUP BY Customer_ID;

CUSTOMER_ID TOTAL_PURCHASE
----------- --------------
          1           2499
          2           1899
          3           2999
          4           1599
          5           3499
          6           1299
          7           2199
          8           1799
          9           2699
         10           3999

10 rows selected.

SELECT MAX(Total_Purchase)
FROM
(
    SELECT
        Customer_ID,
        SUM(Total_Amount) AS Total_Purchase
    FROM Orders
    GROUP BY Customer_ID
);

MAX(TOTAL_PURCHASE)
-------------------
               3999


SELECT
    c.Customer_ID,
    c.Customer_Name,
    SUM(o.Total_Amount) AS Total_Purchase
FROM Customer c
JOIN Orders o
    ON c.Customer_ID = o.Customer_ID
GROUP BY
    c.Customer_ID,
    c.Customer_Name
HAVING SUM(o.Total_Amount) =
(
    SELECT MAX(Total_Purchase)
    FROM
    (
        SELECT
            SUM(Total_Amount) AS Total_Purchase
        FROM Orders
        GROUP BY Customer_ID
    )
);

CUSTOMER_ID CUSTOMER_NAME                                      TOTAL_PURCHASE
----------- -------------------------------------------------- --------------
         10 Harini                                                       3999

SELECT
    c.Customer_ID,
    c.Customer_Name,
    o.Order_ID,
    o.Total_Amount
FROM Customer c
JOIN Orders o
    ON c.Customer_ID = o.Customer_ID
WHERE o.Total_Amount >
(
    SELECT AVG(Total_Amount)
    FROM Orders
)
ORDER BY o.Total_Amount DESC;

CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
TOTAL_AMOUNT
------------
         10 Harini                                                    110
        3999

          5 Vignesh                                                   105
        3499

          3 Karthik                                                   103
        2999


CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
TOTAL_AMOUNT
------------
          9 Sanjay                                                    109
        2699

          1 Arun Kumar                                                101
        2499

SELECT
    p.Product_ID,
    p.Product_Name,
    SUM(oi.Quantity * oi.Price) AS Total_Sales
FROM Product p
JOIN Order_Item oi
    ON p.Product_ID = oi.Product_ID
GROUP BY
    p.Product_ID,
    p.Product_Name
HAVING SUM(oi.Quantity * oi.Price) >
(
    SELECT AVG(Product_Sales)
    FROM
    (
        SELECT
            SUM(Quantity * Price) AS Product_Sales
        FROM Order_Item
        GROUP BY Product_ID
    )
)
ORDER BY Total_Sales DESC;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_SALES
-----------
       201
Classic Eyeglasses
       4800

       203
Reading Glasses
       4000

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_SALES
-----------

       205
Blue Light Glasses
       3900


SELECT
    c.Customer_ID,
    c.Customer_Name,
    COUNT(o.Order_ID) AS Total_Orders,
    SUM(o.Total_Amount) AS Total_Purchase,
    AVG(o.Total_Amount) AS Average_Order_Value
FROM Customer c
JOIN Orders o
    ON c.Customer_ID = o.Customer_ID
GROUP BY
    c.Customer_ID,
    c.Customer_Name
ORDER BY Total_Purchase DESC;

CUSTOMER_ID CUSTOMER_NAME                                      TOTAL_ORDERS
----------- -------------------------------------------------- ------------
TOTAL_PURCHASE AVERAGE_ORDER_VALUE
-------------- -------------------
         10 Harini                                                        1
          3999                3999

          5 Vignesh                                                       1
          3499                3499

          3 Karthik                                                       1
          2999                2999


CUSTOMER_ID CUSTOMER_NAME                                      TOTAL_ORDERS
----------- -------------------------------------------------- ------------
TOTAL_PURCHASE AVERAGE_ORDER_VALUE
-------------- -------------------
          9 Sanjay                                                        1
          2699                2699

          1 Arun Kumar                                                    1
          2499                2499

          7 Rahul                                                         1
          2199                2199


CUSTOMER_ID CUSTOMER_NAME                                      TOTAL_ORDERS
----------- -------------------------------------------------- ------------
TOTAL_PURCHASE AVERAGE_ORDER_VALUE
-------------- -------------------
          2 Priya                                                         1
          1899                1899

          8 Nandhini                                                      1
          1799                1799

          4 Divya                                                         1
          1599                1599


CUSTOMER_ID CUSTOMER_NAME                                      TOTAL_ORDERS
----------- -------------------------------------------------- ------------
TOTAL_PURCHASE AVERAGE_ORDER_VALUE
-------------- -------------------
          6 Keerthana                                                     1
          1299                1299


10 rows selected.

SELECT
    p.Product_ID,
    p.Product_Name,
    COUNT(oi.Order_ID) AS Number_of_Orders,
    SUM(oi.Quantity) AS Total_Quantity_Sold,
    SUM(oi.Quantity * oi.Price) AS Total_Sales,
    AVG(oi.Price) AS Average_Selling_Price
FROM Product p
JOIN Order_Item oi
    ON p.Product_ID = oi.Product_ID
GROUP BY
    p.Product_ID,
    p.Product_Name
ORDER BY Total_Sales DESC;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
NUMBER_OF_ORDERS TOTAL_QUANTITY_SOLD TOTAL_SALES AVERAGE_SELLING_PRICE
---------------- ------------------- ----------- ---------------------
       201
Classic Eyeglasses
               2                   4        4800                  1200

       203
Reading Glasses
               2                   5        4000                   800

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
NUMBER_OF_ORDERS TOTAL_QUANTITY_SOLD TOTAL_SALES AVERAGE_SELLING_PRICE
---------------- ------------------- ----------- ---------------------

       205
Blue Light Glasses
               2                   3        3900                  1300

       202
Stylish Sunglasses

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
NUMBER_OF_ORDERS TOTAL_QUANTITY_SOLD TOTAL_SALES AVERAGE_SELLING_PRICE
---------------- ------------------- ----------- ---------------------
               2                   2        3000                  1500

       204
Contact Lenses
               2                   2        2000                  1000

SELECT
    c.Category_ID,
    c.Category_Name,
    COUNT(DISTINCT oi.Order_ID) AS Total_Orders,
    SUM(oi.Quantity) AS Total_Quantity_Sold,
    SUM(oi.Quantity * oi.Price) AS Total_Sales,
    AVG(oi.Price) AS Average_Price
FROM Category c
JOIN Product p
    ON c.Category_ID = p.Category_ID
JOIN Order_Item oi
    ON p.Product_ID = oi.Product_ID
GROUP BY
    c.Category_ID,
    c.Category_Name
ORDER BY Total_Sales DESC;

CATEGORY_ID
-----------
CATEGORY_NAME
--------------------------------------------------------------------------------
TOTAL_ORDERS TOTAL_QUANTITY_SOLD TOTAL_SALES AVERAGE_PRICE
------------ ------------------- ----------- -------------
          1
Eyeglasses
           6                  12       12700          1100

          2
Sunglasses
           2                   2        3000          1500

CATEGORY_ID
-----------
CATEGORY_NAME
--------------------------------------------------------------------------------
TOTAL_ORDERS TOTAL_QUANTITY_SOLD TOTAL_SALES AVERAGE_PRICE
------------ ------------------- ----------- -------------

          3
Computer Glasses
           2                   2        2000          1000

