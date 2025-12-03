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

-- 8. create 20 Insertion for advisors table ;
INSERT INTO advisors (full_name, email) VALUES
('Cristiano Ronaldo','cr7@football.com'),
('Lionel Messi','messi@football.com'),
('Kylian Mbappe','mbappe@football.com'),
('Neymar Jr','neymar@football.com'),
('Sergio Ramos','ramos@football.com'),
('Karim Benzema','benzema@football.com'),
('Hakim Ziyech','ziyech@football.com'),
('Achraf Hakimi','hakimi@football.com'),
('Riyad Mahrez','mahrez@football.com'),
('Marouane Chamakh','chamakh@football.com'),
('Paul Pogba','pogba@football.com'),
('Zinedine Zidane','zidane@football.com'),
('Mohamed Salah','salah@football.com'),
('Gerard Pique','pique@football.com'),
('Luis Suarez','suarez@football.com'),
('Andres Iniesta','iniesta@football.com'),
('Eden Hazard','hazard@football.com'),
('David Beckham','beckham@football.com'),
('Thierry Henry','henry@football.com'),
('Robert Lewandowski','lewandowski@football.com');

-- 9. create 20 Insertion for accounts table ;
INSERT INTO accounts (account_number, balance, account_type, customer_id, advisor_id) VALUES
('ACC3001',12000,'Savings',1,1),
('ACC3002',5000,'Checking',2,2),
('ACC3003',8000,'Business',3,3),
('ACC3004',150,'Checking',4,4),
('ACC3005',30000,'Savings',5,5),
('ACC3006',0,'Checking',6,6),
('ACC3007',2500,'Savings',7,7),
('ACC3008',9000,'Business',8,8),
('ACC3009',4500,'Checking',9,9),
('ACC3010',18000,'Savings',10,10),
('ACC3011',2200,'Business',11,11),
('ACC3012',7700,'Checking',12,12),
('ACC3013',13300,'Savings',13,13),
('ACC3014',9900,'Business',14,14),
('ACC3015',1500,'Checking',15,15),
('ACC3016',8800,'Savings',16,16),
('ACC3017',12000,'Business',17,17),
('ACC3018',300,'Checking',18,18),
('ACC3019',6500,'Savings',19,19),
('ACC3020',5000,'Business',20,20);