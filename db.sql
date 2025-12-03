-- 1. Create database bankly for adding tables ;
CREATE DATABASE bankly ; 

-- 2. Use database balky ;
USE bankly ;

-- 3. Create first table Customers with customer_id(pk)/ full_name/ email/ phone/ registration_date ;
CREATE TABLE `customers` ( 
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(250) NOT NULL,
    email VARCHAR(250) NOT NULL UNIQUE,
    phone VARCHAR(20) NOT NULL,
    registration_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 4. Create seconde table Advisors with advisor_id(pk)/ full_name/email
CREATE TABLE `advisors` (
    advisor_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(250) NOT NULL,
    email VARCHAR(250) NOT NULL UNIQUE
);

