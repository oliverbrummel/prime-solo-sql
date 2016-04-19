-- question 1: get all users from Chicago:
SELECT * FROM syntax_practice WHERE city = 'chicago';

-- question 2: get all users with usernames that contain the letter a:
SELECT * FROM syntax_practice WHERE username LIKE '%a%';

-- question 3: the bank is giving a new customer bonus! Update all records with an account balance of 0.00
-- and a transactions_attempted of 0. Give them a new account balance of 10.00:
UPDATE syntax_practice SET account_balance = 10.00 WHERE account_balance = 0 AND transactions_attempted = 0;

-- question 4: select all users that have attempted 9 or more transactions:
SELECT * FROM syntax_practice WHERE transactions_attempted >= 9;

-- question 5: get the username and account balance of the 3 users with the highest balances, sort
-- highest to lowest balance. NOTE: Research LIMIT:
SELECT username, account_balance FROM syntax_practice ORDER BY account_balance DESC LIMIT 3;

-- question 6: get the username and account balance of the 3 users with the lowest balances,
-- sort lowest to highest balance:
SELECT username, account_balance FROM syntax_practice ORDER BY account_balance ASC LIMIT 3;

-- question 7: get all users with account balances that are more than $100:
SELECT * FROM syntax_practice WHERE account_balance > 100;

-- question 8: add a new record:
INSERT INTO syntax_practice ("username", "city", "transactions_completed", "transactions_attempted", "account_balance")
VALUES ('oliver', 'minneapolis', '89', '95', '2000000000.37');

-- question 9: the bank is losing money in Miami and Phoenix and needs to unload low transaction customers:
-- Delete users that reside in miami OR phoenix and have completed fewer than 5 transactions.
DELETE FROM syntax_practice WHERE transactions_completed < 5 AND (city = 'miami' OR city = 'phoenix');
