CREATE TABLE Seller (
    Seller_ID NUMBER PRIMARY KEY,
    Seller_Name VARCHAR2(100) NOT NULL,
    Contact_No VARCHAR2(15) UNIQUE,
    Email VARCHAR2(100) UNIQUE,
    Address VARCHAR2(200),
    GST_Number VARCHAR2(20) UNIQUE
);
Table created.

INSERT INTO Seller
VALUES (101, 'ABC Traders', '9876543210', 'abc@gmail.com',
        'Chennai, Tamil Nadu', '33ABCDE1234F1Z5');
1 row created.

INSERT INTO Seller
VALUES (102, 'Vision Opticals', '9876543211', 'vision@gmail.com',
        'Coimbatore, Tamil Nadu', '33FGHIJ5678K2Z6');
1 row created.

INSERT INTO Seller
VALUES (103, 'Bright Eyewear', '9876543212', 'bright@gmail.com',
        'Erode, Tamil Nadu', '33KLMNO9012P3Z7');
1 row created.

INSERT INTO Seller
VALUES (104, 'Clear Vision', '9876543213', 'clearvision@gmail.com',
        'Salem, Tamil Nadu', '33PQRST3456U4Z8');
1 row created.

INSERT INTO Seller
VALUES (105, 'Eye Care Traders', '9876543214', 'eyecare@gmail.com',
        'Madurai, Tamil Nadu', '33VWXYZ7890A5Z9');
1 row created.

SELECT * FROM Seller;

SELLER_ID  SELLER_NAME        CONTACT_NO   EMAIL
---------  -----------------  -----------  --------------------
101        ABC Traders        9876543210   abc@gmail.com
102        Vision Opticals    9876543211   vision@gmail.com
103        Bright Eyewear     9876543212   bright@gmail.com
104        Clear Vision       9876543213   clearvision@gmail.com
105        Eye Care Traders   9876543214   eyecare@gmail.com

commit;

commit complete.
