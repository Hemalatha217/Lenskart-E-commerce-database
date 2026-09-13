CREATE TABLE Customer (
    Customer_ID NUMBER PRIMARY KEY,
    Customer_Name VARCHAR2(50) NOT NULL,
    Email VARCHAR2(100) UNIQUE,
    Phone_No VARCHAR2(15) UNIQUE,
    Date_Of_Birth DATE,
    Address VARCHAR2(100)
);
Table created.

INSERT INTO Customer VALUES
(1, 'Arun Kumar', 'arun@gmail.com', '9876543210',
 DATE '2004-08-12', 'Chennai');
1 row created.

INSERT INTO Customer VALUES
(2, 'Priya', 'priya@gmail.com', '9876543211',
 DATE '2005-02-20', 'Madurai');
1 row created.

INSERT INTO Customer VALUES
(3, 'Karthik', 'karthik@gmail.com', '9876543212',
 DATE '2004-11-05', 'Coimbatore');
1 row created.

INSERT INTO Customer VALUES
(4, 'Divya', 'divya@gmail.com', '9876543213',
 DATE '2005-07-18', 'Salem');
1 row created.

INSERT INTO Customer VALUES
(5, 'Vignesh', 'vignesh@gmail.com', '9876543214',
 DATE '2004-03-25', 'Trichy');
1 row created.

INSERT INTO Customer VALUES
(6, 'Keerthana', 'keerthana@gmail.com', '9876543215',
 DATE '2005-09-10', 'Erode');
1 row created.

INSERT INTO Customer VALUES
(7, 'Rahul', 'rahul@gmail.com', '9876543216',
 DATE '2004-12-30', 'Tirunelveli');
1 row created.

INSERT INTO Customer VALUES
(8, 'Nandhini', 'nandhini@gmail.com', '9876543217',
 DATE '2005-05-14', 'Thanjavur');
1 row created.

INSERT INTO Customer VALUES
(9, 'Sanjay', 'sanjay@gmail.com', '9876543218',
 DATE '2004-06-22', 'Vellore');
1 row created.

INSERT INTO Customer VALUES
(10, 'Harini', 'harini@gmail.com', '9876543219',
 DATE '2005-01-08', 'Chengalpattu');
1 row created.

SELECT * FROM Customer;

CUSTOMERID CUSTOMERNAME EMAIL                 PHONE       DATEOFBIRTH ADDRESS
---------- ------------ --------------------- ----------- ----------- ------------
1          Arun Kumar   arun@gmail.com        9876543210  12-AUG-04   Chennai
2          Priya        priya@gmail.com       9876543211  20-FEB-05   Madurai
3          Karthik      karthik@gmail.com     9876543212  05-NOV-04   Coimbatore
4          Divya        divya@gmail.com       9876543213  18-JUL-05   Salem
5          Vignesh      vignesh@gmail.com     9876543214  25-MAR-04   Trichy
6          Keerthana    keerthana@gmail.com   9876543215  10-SEP-05   Erode
7          Rahul        rahul@gmail.com       9876543216  30-DEC-04   Tirunelveli
8          Nandhini     nandhini@gmail.com    9876543217  14-MAY-05   Thanjavur
9          Sanjay       sanjay@gmail.com      9876543218  22-JUN-04   Vellore
10         Harini       harini@gmail.com      9876543219  08-JAN-05   Chengalpattu

10 rows selected.

COMMIT;

Commit complete.
