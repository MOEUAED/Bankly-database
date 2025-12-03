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

-- 4. Create seconde table Advisors with advisor_id(pk)/ full_name/email;
CREATE TABLE `advisors` (
    advisor_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(250) NOT NULL,
    email VARCHAR(250) NOT NULL UNIQUE
);

-- 5. Create third table Accounts with account_id(pk)/ account_number/ balance/ account_type(checking,saving,business)/ customerif(fk->customers.customerid)/ advisor(fk->advisor.advisorid);
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

-- 6. Create fourth table transactions with transaction_id(PK)/ amount/ transaction_type(debit,credit)/ transaction_date/ accountid(fk→Accounts.accountid);
CREATE TABLE `transactions` (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(12,2) NOT NULL,
    transaction_type ENUM('debit', 'credit') NOT NULL,
    transaction_date DATETIME DEFAULT CURRENT_TIMESTAMP,

    account_id INT NOT NULL,
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);

-- 7. Create 20 Insertion for customers table ;
INSERT INTO customers (full_name, email, phone) VALUES
('Mouad Ziyani','Mouad.Ziyani@mail.com','+212619444444'),
('Cristiano Ronaldo','cr7@mail.com','+351912345678'),
('Lionel Messi','messi@mail.com','+34123456789'),
('Kylian Mbappe','mbappe@mail.com','+33123456789'),
('Neymar Jr','neymar@mail.com','+5511987654321'),
('Sergio Ramos','ramos@mail.com','+34111222333'),
('Karim Benzema','benzema@mail.com','+33112233445'),
('Hakim Ziyech','ziyech@mail.com','+212661234567'),
('Achraf Hakimi','hakimi@mail.com','+212662345678'),
('Riyad Mahrez','mahrez@mail.com','+212663456789'),
('Marouane Chamakh','chamakh@mail.com','+212664567890'),
('Paul Pogba','pogba@mail.com','+33123455678'),
('Zinedine Zidane','zidane@mail.com','+33123456780'),
('Mohamed Salah','salah@mail.com','+201234567890'),
('Gerard Pique','pique@mail.com','+34123456781'),
('Luis Suarez','suarez@mail.com','+34123456782'),
('Andres Iniesta','iniesta@mail.com','+34123456783'),
('Eden Hazard','hazard@mail.com','+32456789012'),
('David Beckham','beckham@mail.com','+441234567890'),
('Robert Lewandowski','lewandowski@mail.com','+48123456789');

