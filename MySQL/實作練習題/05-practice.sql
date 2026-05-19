-- Ex5-1
-- 將 customer 表格的所有欄位資料列出
use bookshop;
select * from customer;
-- 將 customer 表格的 customer_name (別名為 customer name), phone, address 欄位資料列出
select customer_name as 'customer name', phone, address from customer;

-- Ex5-2
-- 查詢客戶ID為C001的資料
select * from bookshop.customer where customer_id = 'C001';
-- 查詢出版日期為2016/1/1以後的書籍
select * from bookshop.book where publication_date <= '2016-01-01';
-- 查詢居住在Taipei的客戶
select * from bookshop.customer where address like '%Taipei%';

-- Ex5-3
-- 查詢居住在Taipei或Taoyuan的客戶
select * from bookshop.customer where address like '%Taipei%' or address like '%Taoyuan%';
-- 查詢出版日期介於2016-1-1~2016-12-31之間的書籍，而且依照出版日期降冪排序
select * from bookshop.book where publication_date between '2016-01-01' and '2016-12-31'
order by publication_date desc;

-- Ex5-4
-- 統計居住在台北的客戶總數量
select count(1) as count_taipei from bookshop.customer where address like '%Taipei%';
-- 統計訂單1、2號的訂購總量
select sum(quantity) from bookshop.order_detail where order_id in (1, 2);
-- 統計2016年的平均書價
select avg(price) from bookshop.book where publication_date between '2016-01-01' and '2016-12-31';

-- Ex5-5
-- 舉辦讀者與作者酒會，客人名單上列出讀者與作者名稱，並列出他們的身份別
select customer_name as guest, 'reader' as type from bookshop.customer
union all
select distinct author as guest, 'author' as type from bookshop.book
order by type;

-- Ex5-6
-- customer LEFT JOIN order_master，
-- 顯示customer_name, phone, address, order_id, order_date欄位資料
select c.customer_name, c.phone, c.address, o.order_id, o.order_date
from bookshop.customer c
left join bookshop.order_master o on o.customer_id = c.customer_id;

-- inner join order_master, customer, order_detail, book表格，
-- 顯示order_id, customer_name, orderdate, book_name, price, quantity欄位
-- 依照order_id排序
select om.order_id, c.customer_name, om.order_date, b.book_name, od.quantity
from bookshop.order_master om
join bookshop.order_detail od on od.order_id = om.order_id
join bookshop.customer c on c.customer_id = om.customer_id
join bookshop.book b on b.isbn = od.isbn;