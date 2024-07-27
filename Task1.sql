CREATE DATABASE BHARATH;

USE BHARATH;

CREATE TABLE Employees (employee_id BIGINT PRIMARY KEY,first_name VARCHAR(50),last_name VARCHAR(50),
email VARCHAR(100),department VARCHAR(50),salary INT,hire_date BIGINT);

CREATE TABLE Products (product_id BIGINT PRIMARY KEY,product_name VARCHAR(100),category VARCHAR(50),
description VARCHAR(255),brand VARCHAR(50),price INT,stock_quantity BIGINT);

CREATE TABLE Customers (customer_id BIGINT PRIMARY KEY,first_name VARCHAR(50),last_name VARCHAR(50),
email VARCHAR(100),phone VARCHAR(20),total_orders INT,last_order_date BIGINT);

CREATE TABLE Orders (order_id BIGINT PRIMARY KEY,customer_id BIGINT,order_status VARCHAR(20),
shipping_address VARCHAR(255),payment_method VARCHAR(50),total_amount INT,order_date BIGINT);

CREATE TABLE Suppliers (supplier_id BIGINT PRIMARY KEY,company_name VARCHAR(100),contact_name VARCHAR(100),
email VARCHAR(100),phone VARCHAR(20),total_products INT,last_delivery_date BIGINT);

ALTER TABLE ORDERS ADD COLUMN (refund_type VARCHAR(50), refund_amount INT);

SELECT *FROM Customers;
show tables;