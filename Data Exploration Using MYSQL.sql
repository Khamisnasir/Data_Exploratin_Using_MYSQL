#Show all customer records
select* from sales.customers;
#show total Number of Customers
select  count(*) from sales.customers;
#show total Number of products
Select count(*) from sales.Products; 
#Show transactions for Chennai market (market code for chennai is Mark003
select* from sales.transactions where market_code='mark003';
#Show distrinct Customer_name that were sold in Excel Store
select distinct custmer_name from sales.customers where custmer_name='Excel Stores';
#Show transactions where currency is US dollars
select * from sales.transactions  where currency='USD';
#Show transactions in 2020 join by date table and sale amount =2042
SELECT transactions.*, date.* FROM sales.transactions INNER JOIN sales.date ON 
transactions.order_date=date.date where date.year=2020 and   sales_amount='2042' ;
#show revenue of sales_amount from transactions were years 2019 and  market_code=mark005
SELECT sum(transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date 
ON transactions.order_date = date.date  where date.year=2019 and transactions.market_code='mark005'; 
#show revenue of sales_amount from transactions were years 2017 and  market_code=mark008
SELECT SUM(transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date
 ON transactions.order_date=date.date where date.year=2017 and transactions.market_code="Mark008";




