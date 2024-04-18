INSERT INTO HouseholdAccounts VALUES 
('2024-02-25', '居住費', '3月の家賃', 0, 85000);

-- 更新する場合はUPDATEテーブル名 SET カラム=値を使う、WHEREで条件を指定する、しなければ全てのレコード(列)が更新される
UPDATE HouseholdAccounts
SET Description = 90000
WHERE Date = '2024-02-25'

-- 削除する場合はDELETEを使う
DELETE FROM HouseholdAccounts
WHERE Date = '2024-02-25'

DELETE FROM HouseholdAccounts
WHERE Expense > 0

-- 列を指定して追加する場合はINSERT INTO テーブル名(列名) VALUES(値)を使う
INSERT INTO HouseholdAccounts (Category, Date, Expense)
VALUES ('通信費', '2024-02-20', 6200)

-- 複数のレコードを追加する場合は、INSERT INTO テーブル名 VALUES(値1), (値2), ...を使う
INSERT INTO HouseholdAccounts VALUES
('2024-02-03', '食費', 'コーヒーを購入', 0, 380),
('2024-02-10', '給料', '1月の給料', 280000, 0),
('2024-02-11', '教養娯楽費', '書籍を購入', 0, 2800),
('2024-02-14', '交際費', '同期会の会費', 0, 5000),
('2024-02-18', '水道光熱費', '1月の電気代', 0, 7560);
