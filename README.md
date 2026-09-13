# 👓 Lenskart E-Commerce Database Management System

## Overview

The Lenskart E-Commerce Database Management System is a DBMS project designed to efficiently manage the operations of an online eyewear platform. The system provides a centralized database for handling customer information, eyewear products, categories, brands, prescriptions, orders, payments, deliveries, reviews, and store operations.

It aims to replace manual data management with an organized and secure database solution that improves operational efficiency, maintains data consistency, and reduces redundancy. :contentReference[oaicite:0]{index=0}

---

## Problem Statement

The Lenskart E-Commerce Database Management System is designed to solve the challenges of managing eyewear store data manually. Maintaining customer information, prescriptions, products, orders, payments, and deliveries without a centralized database can lead to data redundancy, errors, and inefficient operations.

This project provides a structured DBMS solution that stores and manages all eyewear-related information in a single database. It ensures accurate data management, faster order processing, efficient prescription tracking, and easy retrieval of information using SQL and relational database concepts. :contentReference[oaicite:1]{index=1}

---

## Project Description

The proposed Lenskart E-Commerce Database Management System is designed to efficiently manage the following information:

### Customer Management

### Product Management

### Category Management

### Brand Management

### Prescription Management

### Cart Management

### Order Management

### Payment Management

### Delivery Management

### Review Management

### Store Management

The project applies relational database concepts, normalization techniques, and entity relationships to design a structured and efficient database for an eyewear e-commerce platform. :contentReference[oaicite:2]{index=2}

---

## Entities and Their Keys

### Customer

| Attribute | Key Type |
|------------|------------|
| Customer_ID | Primary Key |
| Customer_Name | Not Null |
| Email | Unique Key |
| Phone_No | Unique Key |
| Date_Of_Birth | - |
| Address | - |

### Category

| Attribute | Key Type |
|------------|------------|
| Category_ID | Primary Key |
| Category_Name | Unique Key |
| Description | - |

### Brand

| Attribute | Key Type |
|------------|------------|
| Brand_ID | Primary Key |
| Brand_Name | Not Null |
| Contact_No | Unique Key |
| Address | - |

### Product

| Attribute | Key Type |
|------------|------------|
| Product_ID | Primary Key |
| Product_Name | - |
| Category_ID | Foreign Key |
| Brand_ID | Foreign Key |
| Frame_Type | - |
| Price | - |
| Stock | - |
| Power_Compatible | - |

### Prescription

| Attribute | Key Type |
|------------|------------|
| Prescription_ID | Primary Key |
| Customer_ID | Foreign Key |
| Right_Eye_Power | - |
| Left_Eye_Power | - |
| Cylindrical_Power | - |
| Axis | - |
| Prescription_Date | - |

### Cart

| Attribute | Key Type |
|------------|------------|
| Cart_ID | Primary Key |
| Customer_ID | Foreign Key |
| Total_Items | - |
| Total_Amount | - |

### Order

| Attribute | Key Type |
|------------|------------|
| Order_ID | Primary Key |
| Customer_ID | Foreign Key |
| Order_Date | - |
| Order_Status | Check Key |
| Total_Amount | - |

### Order_Item

| Attribute | Key Type |
|------------|------------|
| Order_Item_ID | Primary Key |
| Order_ID | Foreign Key |
| Product_ID | Foreign Key |
| Prescription_ID | Foreign Key |
| Quantity | - |
| Price | - |

### Payment

| Attribute | Key Type |
|------------|------------|
| Payment_ID | Primary Key |
| Order_ID | Foreign Key |
| Payment_Method | - |
| Payment_Status | Check Key |
| Payment_Date | - |
| Amount | - |

### Review

| Attribute | Key Type |
|------------|------------|
| Review_ID | Primary Key |
| Customer_ID | Foreign Key |
| Product_ID | Foreign Key |
| Rating | Check Key |
| Review_Text | - |
| Review_Date | - |

### Delivery

| Attribute | Key Type |
|------------|------------|
| Delivery_ID | Primary Key |
| Order_ID | Foreign Key |
| Delivery_Address | - |
| Delivery_Date | - |
| Delivery_Status | Check Key |

### Store

| Attribute | Key Type |
|------------|------------|
| Store_ID | Primary Key |
| Store_Name | - |
| Location | - |
| Contact_No | Unique Key |

---

## Entity Relationships

| Entity 1 | Relationship | Entity 2 |
|-----------|-------------|-----------|
| Customer | Owns | Cart |
| Customer | Has | Prescription |
| Customer | Places | Order |
| Customer | Writes | Review |
| Category | Categorizes | Product |
| Brand | Belongs To | Product |
| Order | Contains | Order_Item |
| Product | Included In | Order_Item |
| Order | Generates | Payment |
| Order | Generates | Delivery |
| Product | Receives | Review |
| Store | Sells | Product |



---

## ER Diagram

### Main Entities

- Customer
- Category
- Brand
- Product
- Prescription
- Cart
- Order
- Order_Item
- Payment
- Review
- Delivery
- Store

:contentReference[oaicite:4]{index=4}

---

## Relationship Diagram

The database uses primary key and foreign key relationships to maintain referential integrity among Customers, Products, Categories, Brands, Orders, Payments, Deliveries, Prescriptions, Reviews, and Stores. :contentReference[oaicite:5]{index=5}

---

## Overall ER Diagram

The overall ER Diagram represents the logical structure of the Lenskart Analysis Database and illustrates the entities, attributes, and relationships involved in the system. :contentReference[oaicite:6]{index=6}

---

## Technologies Used

- Oracle Database 21c XE
- SQL
- SQL*Plus
- VS Code
- GitHub

---

## Features

- Customer Information Management
- Eyewear Product Management
- Prescription Management
- Cart Management
- Order Processing
- Payment Tracking
- Delivery Tracking
- Review & Rating Management
- Brand Management
- Store Management

---

## Learning Outcomes

- Database Design
- ER Modeling
- Relational Schema Design
- SQL Queries
- Primary and Foreign Keys
- Functional Dependencies
- Database Normalization
- Data Integrity Management

---

## Future Enhancements

- Online Payment Gateway Integration
- Inventory Analytics Dashboard
- AI-Based Product Recommendations
- Customer Purchase Analysis
- Real-Time Order Tracking
- Business Intelligence Reporting

---

## Author

**Hemalatha K**

