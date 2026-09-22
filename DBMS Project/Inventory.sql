CREATE TABLE Inventory (
    Inventory_ID NUMBER PRIMARY KEY,
    Product_ID NUMBER,
    Store_ID NUMBER,
    Seller_ID NUMBER,
    Quantity_Available NUMBER NOT NULL,
    Last_Updated DATE,

    CONSTRAINT fk_inventory_product
        FOREIGN KEY (Product_ID)
        REFERENCES Product(Product_ID),

    CONSTRAINT fk_inventory_store
        FOREIGN KEY (Store_ID)
        REFERENCES Store(Store_ID),

    CONSTRAINT fk_inventory_seller
        FOREIGN KEY (Seller_ID)
        REFERENCES Seller(Seller_ID)
);
Table created.

INSERT INTO Inventory
VALUES (1, 201, 1, 101, 50, TO_DATE('22-09-2026', 'DD-MM-YYYY'));
1 row created.
  
INSERT INTO Inventory
VALUES (2, 202, 1, 102, 30, TO_DATE('22-09-2026', 'DD-MM-YYYY'));
1 row created.
  
INSERT INTO Inventory
VALUES (3, 203, 2, 103, 45, TO_DATE('21-09-2026', 'DD-MM-YYYY'));
1 row created.

INSERT INTO Inventory
VALUES (4, 204, 2, 104, 25, TO_DATE('20-09-2026', 'DD-MM-YYYY'));
1 row created.

INSERT INTO Inventory
VALUES (5, 205, 3, 105, 0, TO_DATE('19-09-2026', 'DD-MM-YYYY'));
1 row created.

SELECT * FROM Inventory;

INVENTORY_ID  PRODUCT_ID  STORE_ID  SELLER_ID  QUANTITY_AVAILABLE  LAST_UPDATED
------------  ----------  --------  ---------  ------------------  -----------
1             201         1         101        50                  22-SEP-26
2             202         1         102        30                  22-SEP-26
3             203         2         103        45                  21-SEP-26
4             204         2         104        25                  20-SEP-26
5             205         3         105        0                   19-SEP-26
commit;

commit complete.
