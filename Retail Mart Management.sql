/* Write a query to create a database named SQL basics*/
create database SQL_basics;
/*Write a query to select the database SQL basics*/
use SQL_basics;
/* Create tables*/
create table product(
	product_code varchar(20), 
	product_name varchar(50), 
    price float, 
    stock varchar(20), 
    category varchar(20));
create table customer(
	customer_id varchar(10),
    customer_name varchar(20),
    customer_location varchar(50),
    customer_phone_number varchar(15));
create table sales(
	order_date date,
    order_number varchar(20),
    customer_id varchar(10),
    customer_name varchar(20),
    product_code varchar(20),
    product_name varchar(50),
    quantity int,
    price float);
    
/*Write a query to add two new columns such as S_no and categories to the sales table.*/
alter Table sql_basics.sales
add S_no varchar(20),
add categories varchar(20);

/* 	Write a query to change the column type of stock in the product table to varchar.*/
alter table sql_basics.product
change stock stock varchar(20);

/*Write a query to change the table name from customer-to-customer details.*/
alter table sql_basics.customer rename to customer_details;

/*Write a query to drop the columns S_no and categories from the sales table.*/
alter table sql_basics.sales
drop column S_no;
alter table sql_basics.sales
drop column categories;

/*Write a query to display order id, customer id, order date, price, and quantity from the sales table.*/
select order_number,customer_id, order_date, price, quantity 
from sql_basics.sales;

/*Write a query to display all the details in the product table if the category is stationary*/
select * from sql_basics.product
where category="stationary";

/*Write a query to display a unique category from the product table*/
select distinct category
from sql_basics.product;

/*Write a query to display the sales details if quantity is greater than 2 and price is lesser than 500 from the sales table.*/
select * from sql_basics.sales
where quantity>2 and price <500;

/*Write a query to display the customer’s name if the name ends with a.*/
select * from sql_basics.sales
where customer_name like "%a";

/*Write a query to display the product details in descending order of the price.*/
select * from sql_basics.sales
order by price desc;

/*Write a query to display the product code and category from similar categories that are greater than or equal to 2.*/
select * from sql_basics.product
group by category
having product_code>= 2;

/*Write a query to display the order number and the customer name to combine the results of the order and the customer tables including duplicate rows.*/
select order_number, customer_name
from sql_basics.sales;
