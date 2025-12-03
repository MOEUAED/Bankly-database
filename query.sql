-- 1. Insérer un nouveau customer
INSERT INTO customers (full_name, email, phone) VALUES ('Mouad Ziyani', 'new.customer@gmail.com', '0612349999');

-- 2. Modifier le numéro de téléphone d’un customer
UPDATE customers SET phone= '0700000000' WHERE customer_id = 1;

-- 3. Afficher tous les customers
SELECT * FROM customers;

-- 4. Afficher uniquement les full_name et email des customers
SELECT full_name, email FROM customers;

-- 5. Afficher tous les accounts
SELECT * FROM accounts;

-- 6. Afficher uniquement les account_number
SELECT account_number FROM accounts;

-- 7. Afficher toutes les transactions
SELECT * FROM transactions;

-- 8. Afficher les accounts avec un balance > 10000
SELECT * FROM accounts WHERE balance > 10000;

-- 9. Afficher les accounts avec un balance ≤ 0
SELECT * FROM accounts WHERE balance <= 0;

-- 10. Afficher les transactions de type "debit"
SELECT * FROM transactions WHERE transaction_type = 'debit';

-- 11. Afficher les transactions de type "credit"
SELECT * FROM transactions WHERE transaction_type = 'credit';

-- 12. Afficher les transactions du account_id = 1
SELECT * FROM transactions WHERE account_id = 1;

-- 13. Afficher les customers ayant un account géré par l’advisor_id = 2
SELECT DISTINCT customers.* FROM customers JOIN accounts ON customers.customer_id = accounts.customer_id WHERE accounts.advisor_id = 2;

-- 14. Afficher les accounts ayant account_type = "savings"
SELECT * FROM accounts WHERE account_type = 'savings';

-- 15. Afficher les transactions avec un amount ≥ 500
SELECT * FROM transactions WHERE amount >= 500;

-- 16. Afficher les transactions avec un amount entre 100 et 1000
SELECT * FROM transactions WHERE amount BETWEEN 100 AND 1000;

-- 17. Afficher les accounts du customer_id = 1
SELECT * FROM accounts WHERE customer_id = 1;

-- 18. Afficher les accounts triés par balance (ordre croissant)
SELECT * FROM accounts ORDER BY balance ASC;

-- 19. Afficher les transactions triées par amount (ordre décroissant)
SELECT * FROM transactions ORDER BY amount DESC;

-- 20. Afficher les 5 plus grandes transactions
SELECT * FROM transactions ORDER BY amount DESC LIMIT 5;

-- 21. Afficher toutes les transactions triées par transaction_date décroissante
SELECT * FROM transactions ORDER BY transaction_date DESC;

-- 22. Afficher les 3 dernières transactions
SELECT * FROM transactions ORDER BY transaction_date DESC LIMIT 3;

-- 23. Afficher chaque account avec le nom du customer et le nom de l’advisor (JOIN)
SELECT 
    accounts.account_id,
    accounts.account_number,
    accounts.balance,
    customers.full_name AS customer_name,
    advisors.full_name AS advisor_name
FROM accounts
LEFT JOIN customers 
    ON accounts.customer_id = customers.customer_id
LEFT JOIN advisors 
    ON accounts.advisor_id = advisors.advisor_id;