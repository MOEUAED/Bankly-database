# Bankly — Projet Base de Données (BDD)

**Durée :** 3 jours  
**Date de lancement :** 01/12/2025 10:00  
**Deadline :** 03/12/2025 < 17:00

---

## 1. Contexte & Objectif
**Bankly** est une application bancaire en ligne permettant aux clients de gérer leurs comptes, consulter leurs soldes, effectuer des transactions et contacter leur conseiller.  
L'objectif du projet est de **concevoir et implémenter** une base de données relationnelle (max 4 tables) couvrant les entités essentielles : clients (customers), conseillers (advisors), comptes (accounts) et transactions (transactions).

---

## 2. Livrables
- `db.sql` — script SQL complet : `CREATE TABLE` + `INSERT` (≥ 20 enregistrements).
- `queries.sql` — fichier contenant ≥ 20 requêtes (SELECT / INSERT / UPDATE / DELETE / JOIN / AGG).
- `diagramme ERD visuel` (PK / FK / cardinalités).
- `README.md` — (ce fichier) explication & instructions.
- Optionnel : `Bankly_Database_Report.pdf` — rapport explicatif.

---

## 3. Schéma (ERD) — notionnel
**Entités :**
- `customers`
  - `customer_id` (PK)
  - `full_name`
  - `email`
  - `phone`
  - `registration_date`

- `advisors`
  - `advisor_id` (PK)
  - `full_name`
  - `email`

- `accounts`
  - `account_id` (PK)
  - `account_number`
  - `balance`
  - `account_type` (ENUM: Checking, Savings, Business)
  - `customerid` (FK → customers.customer_id)
  - `advisorid` (FK → advisors.advisor_id)
  - `created_at` (DATETIME DEFAULT CURRENT_TIMESTAMP)

- `transactions`
  - `transaction_id` (PK)
  - `amount`
  - `transaction_type` (ENUM: debit, credit)
  - `transaction_date`
  - `accountid` (FK → accounts.account_id)

**Relations / cardinalités :**
- 1 customer — N accounts  
- 1 advisor — N accounts  
- 1 account — N transactions  
- 1 transaction — 1 account


---

## 4. Contenu des fichiers fournis
### `db.sql`
- Crée la base `Bankly`, crée les 4 tables avec PK / FK, index et contraintes.
- Insert des données d'exemple : (≥ 20 enregistrements au total).
- Format type `mysqldump` prêt à importer.

### `queries.sql`
Contient les requêtes demandées, par exemple :
- INSERT nouveau customer
- UPDATE phone
- SELECT * FROM customers
- SELECT full_name, email FROM customers
- SELECT * FROM accounts WHERE balance > 10000
- SELECT * FROM transactions WHERE transaction_type = 'debit'
- JOINs (accounts + customers + advisors)
- Aggregations (COUNT, SUM), top 5 transactions, dernières transactions, etc.

---