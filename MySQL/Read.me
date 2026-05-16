# MySQL 學習筆記 📚

> 整理自緯育 Tibame AES 雲端工程師在職培訓課程

本筆記整理 MySQL 常用語法，包含資料庫操作、表格管理、資料 CRUD、Transaction 與備份還原等主題，適合作為日常開發與面試準備的速查手冊。

---

## 📑 目錄

- [一、資料庫 (Database) 操作](#一資料庫-database-操作)
- [二、表格 (Table) 操作](#二表格-table-操作)
- [三、修改表格結構 (ALTER TABLE)](#三修改表格結構-alter-table)
- [四、查詢資料 (SELECT)](#四查詢資料-select)
- [五、新增 / 修改 / 刪除資料](#五新增--修改--刪除資料)
- [六、Transaction 交易控制](#六transaction-交易控制)
- [七、資料庫備份與還原](#七資料庫備份與還原)

---

## 一、資料庫 (Database) 操作

### 建立資料庫

```sql
CREATE DATABASE bookshop;
-- 或使用 SCHEMA（在 MySQL 中與 DATABASE 等效）
CREATE SCHEMA bookshop;
```

### 刪除資料庫

```sql
DROP DATABASE bookshop;
DROP SCHEMA bookshop;
```

> 💡 在 MySQL 中，`DATABASE` 與 `SCHEMA` 是同義詞，可以互換使用。

---

## 二、表格 (Table) 操作

### 建立表格

```sql
CREATE TABLE purchase (
    purchase_id    BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    isbn           CHAR(13) NOT NULL,
    quantity       INT NOT NULL,
    purchase_date  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_purchase_book
        FOREIGN KEY (isbn) REFERENCES book(isbn)
);
```

**重點說明：**
- `BIGINT UNSIGNED`：無正負號的大整數，搭配 `AUTO_INCREMENT` 自動遞增
- `PRIMARY KEY`：主鍵，唯一識別每筆資料
- `NOT NULL`：欄位不可為空
- `DEFAULT CURRENT_TIMESTAMP`：預設為當下時間
- `CONSTRAINT ... FOREIGN KEY`：建立外鍵關聯

### 刪除表格

```sql
DROP TABLE book;
```

### 顯示表格結構

```sql
DESCRIBE book;
-- 或縮寫
DESC book;
```

> ⚠️ 注意：`SHOW book;` 並非正確語法。  
> 若要查看所有表格請用 `SHOW TABLES;`，查看建表語法請用 `SHOW CREATE TABLE book;`。

---

## 三、修改表格結構 (ALTER TABLE)

### 新增欄位

```sql
ALTER TABLE book ADD COLUMN type VARCHAR(40);
```

### 欄位更名

```sql
ALTER TABLE book RENAME COLUMN type TO class;
```

### 修改 / 刪除欄位預設值

```sql
-- 設定預設值
ALTER TABLE book ALTER COLUMN class SET DEFAULT 'computer';

-- 移除預設值
ALTER TABLE book ALTER COLUMN class DROP DEFAULT;
```

### 修改欄位資料型態

```sql
ALTER TABLE book MODIFY class VARCHAR(20);
```

### 刪除欄位

```sql
ALTER TABLE book DROP COLUMN class;
```

### 外鍵 (Foreign Key) 管理

```sql
-- 移除 FK
ALTER TABLE book DROP FOREIGN KEY fk_book_publisher;

-- 建立 FK
ALTER TABLE book
ADD CONSTRAINT fk_book_publisher
FOREIGN KEY (publisher_id) REFERENCES publisher(publisher_id);
```

### 修改欄位可否為 NULL

```sql
-- 改為不可為空
ALTER TABLE book MODIFY author VARCHAR(200) NOT NULL;

-- 改為可為空
ALTER TABLE book MODIFY author VARCHAR(200) NULL;
```

---

## 四、查詢資料 (SELECT)

### 基本查詢

```sql
SELECT * FROM book;
```

### 字串補位 (LPAD) 範例

自動編號總字元數若少於 4 個，會在左邊補 0：

```sql
SELECT 
    CONCAT(prefix, LPAD(id, 4, '0')) AS `product ID`,
    product_name
FROM product1;
```

| 函式 | 說明 |
|------|------|
| `CONCAT()` | 字串串接 |
| `LPAD(str, len, pad)` | 從左補字元至指定長度 |
| `AS` | 欄位別名 |

---

## 五、新增 / 修改 / 刪除資料

### 新增資料 (INSERT)

```sql
INSERT INTO publisher (publisher_id, publisher_name, contact, phone)
VALUES
    ('P002', 'John Wiley, Sons Inc', 'Don',   '03-36962869'),
    ('P003', 'Manning Publications', 'Mary',  '04-43456789'),
    ('P004', 'Apress',               'Allen', '05-59876543'),
    ('P00Y', 'Publisher Y',          'Yale',  '08-83698765');
```

### 修改資料 (UPDATE)

```sql
UPDATE publisher
SET contact = 'John', phone = '07-123456789'
WHERE publisher_id = 'P00X';
```

> ⚠️ 一定要加上 `WHERE` 條件，否則會更新整張表！

### 刪除資料 (DELETE)

```sql
DELETE FROM publisher
WHERE publisher_id = 'P00X' OR publisher_id = 'P00Y';
```

> ⚠️ 同樣務必加上 `WHERE` 條件，否則整張表的資料都會被刪除。

---

## 六、Transaction 交易控制

Transaction 確保多個 SQL 操作具有 **原子性 (Atomicity)**，要嘛全部成功，要嘛全部還原。

### 關閉自動提交

```sql
SET autocommit = 0;
```

### 復原 / 提交

```sql
ROLLBACK;   -- 還原所有未提交的變更
COMMIT;     -- 確認提交
```

### 儲存點 (Savepoint)

可在 Transaction 中設定多個還原點：

```sql
SAVEPOINT sp1;
-- 進行一些操作...
ROLLBACK TO sp1;   -- 只還原至 sp1 之後的操作
```

**Transaction 完整流程範例：**

```sql
SET autocommit = 0;

INSERT INTO publisher VALUES ('P010', '出版社A', 'Tom', '02-11111111');
SAVEPOINT sp1;

INSERT INTO publisher VALUES ('P011', '出版社B', 'Amy', '02-22222222');
ROLLBACK TO sp1;   -- 取消 P011 的新增

COMMIT;             -- 確認 P010 的新增
```

---

## 七、資料庫備份與還原

### 還原資料庫（從 .sql 檔匯入）

在 **terminal / 命令列** 執行（非 SQL 指令）：

```bash
mysql -u root -p < bookshop.sql
```

### 備份資料庫（補充）

```bash
mysqldump -u root -p bookshop > bookshop.sql
```

---

## 📎 附錄：常用資料型態速查

| 類別 | 型態 | 說明 |
|------|------|------|
| 整數 | `INT`, `BIGINT`, `TINYINT` | 整數，可加 `UNSIGNED` |
| 浮點 | `FLOAT`, `DOUBLE`, `DECIMAL` | 小數 |
| 字串 | `CHAR(n)`, `VARCHAR(n)` | 定長 / 變長字串 |
| 文字 | `TEXT`, `LONGTEXT` | 長文字 |
| 日期 | `DATE`, `DATETIME`, `TIMESTAMP` | 時間相關 |
| 布林 | `BOOLEAN` (= `TINYINT(1)`) | 布林值 |

---

## 📝 學習資源

- [Mysql課程資源](https://sites.google.com/view/ronforwork/home)

---

> ✍️ 持續更新中，歡迎指正與補充！
