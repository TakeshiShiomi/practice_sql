SELECT * FROM HouseholdAccounts;
SELECT category FROM HouseholdAccounts;
SELECT category, Income, Expense FROM HouseholdAccounts;

-- ASを使うと、取得したカラム名を変更できる
SELECT category AS カテゴリー, Income AS 入金額, Expense AS 出金額 FROM HouseholdAccounts AS 家計簿;


SELECT * FROM HouseholdAccounts WHERE Category = '食費';
SELECT * FROM HouseholdAccounts WHERE Expense > 300;
-- 条件を複数指定する場合はANDを使う
SELECT * FROM HouseholdAccounts WHERE Category = '食費' AND Expense > 300;
-- ORを使うと、どちらかの条件を満たすレコードを取得できる
SELECT * FROM HouseholdAccounts WHERE Category = '食費' OR Expense > 5000;
-- BETWEENを使うと、範囲を指定してレコードを取得できる
SELECT * FROM HouseholdAccounts WHERE Expense BETWEEN 1000 AND 5000;
