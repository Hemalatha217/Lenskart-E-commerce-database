CREATE TABLE Customer (
    CustomerID    NUMBER PRIMARY KEY,
    CustomerName  VARCHAR2(50) NOT NULL,
    Email         VARCHAR2(100) UNIQUE,
    Phone         VARCHAR2(15),
    DateOfBirth   DATE,
    Address       VARCHAR2(100)
);



INSERT INTO Customer VALUES (1,  'Arun Kumar', 'arun@gmail.com',      '9876543210', DATE '2004-08-12', 'Chennai');
INSERT INTO Customer VALUES (2,  'Priya',      'priya@gmail.com',     '9876543211', DATE '2005-02-20', 'Madurai');
INSERT INTO Customer VALUES (3,  'Karthik',    'karthik@gmail.com',   '9876543212', DATE '2004-11-05', 'Coimbatore');
INSERT INTO Customer VALUES (4,  'Divya',      'divya@gmail.com',     '9876543213', DATE '2005-07-18', 'Salem');
INSERT INTO Customer VALUES (5,  'Vignesh',    'vignesh@gmail.com',   '9876543214', DATE '2004-03-25', 'Trichy');
INSERT INTO Customer VALUES (6,  'Keerthana',  'keerthana@gmail.com', '9876543215', DATE '2005-09-10', 'Erode');
INSERT INTO Customer VALUES (7,  'Rahul',      'rahul@gmail.com',     '9876543216', DATE '2004-12-30', 'Tirunelveli');
INSERT INTO Customer VALUES (8,  'Nandhini',   'nandhini@gmail.com',  '9876543217', DATE '2005-05-14', 'Thanjavur');
INSERT INTO Customer VALUES (9,  'Sanjay',     'sanjay@gmail.com',    '9876543218', DATE '2004-06-22', 'Vellore');
INSERT INTO Customer VALUES (10, 'Harini',     'harini@gmail.com',    '9876543219', DATE '2005-01-08', 'Chengalpattu');
INSERT INTO Customer VALUES (11, 'Meena',      'meena@gmail.com',     '9876543220', DATE '2005-04-15', 'Madurai');
INSERT INTO Customer VALUES (12, 'Suresh',     'suresh@gmail.com',    '9876543221', DATE '2004-10-02', 'Salem');

COMMIT;



SELECT * FROM Customer ORDER BY CustomerID;



UPDATE Customer SET Address = 'Bangalore' WHERE CustomerID = 3;

UPDATE Customer SET Phone = '9111122233' WHERE CustomerID = 6;

UPDATE Customer SET Email = 'harini_new@gmail.com' WHERE CustomerID = 10;

COMMIT;


SELECT * FROM Customer WHERE CustomerID = 3;



DELETE FROM Customer WHERE CustomerID = 7;

DELETE FROM Customer WHERE CustomerID = 9;

COMMIT;


SELECT * FROM Customer ORDER BY CustomerID;
