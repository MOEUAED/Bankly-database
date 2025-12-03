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
SELECT * FROM transactions WHERE accountid = 1;