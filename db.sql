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

-- 5. Create third table Accounts with account_id(pk)/ account_number/ balance/ account_type(checking,saving,business)/ customerif(fk->customers.customerid)/ advisor(fk->advisor.advisorid)
CREATE TABLE `accounts` (
    account_id INT PRIMARY KEY AUTO_INCREMENT,
    account_number VARCHAR(50) NOT NULL UNIQUE,
    balance DECIMAL(12,2) NOT NULL DEFAULT 0,
    account_type ENUM('Checking', 'Savings', 'Business') NOT NULL,
    
    customer_id INT NOT NULL,
    advisor_id INT NOT NULL,

    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (advisor_id) REFERENCES advisors(advisor_id)
);

-- 6. Create fourth table transactions with transaction_id(PK)/ amount/ transaction_type(debit,credit)/ transaction_date/ accountid(fk→Accounts.accountid)
CREATE TABLE `transactions` (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(12,2) NOT NULL,
    transaction_type ENUM('debit', 'credit') NOT NULL,
    transaction_date DATETIME DEFAULT CURRENT_TIMESTAMP,

    account_id INT NOT NULL,
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);
