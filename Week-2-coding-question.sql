/*
All of the questions in this quiz refer to the open source Chinook Database. 
Please familiarize yourself with the ER diagram to familiarize yourself with the table and column names to write accurate queries and get the appropriate answers.
https://ucde-rey.s3.amazonaws.com/DSV1015/ChinookDatabaseSchema.png
*/

/*
Question 1
Find all the tracks that have a length of 5,000,000 milliseconds or more.
*/

select
trackid
from tracks
where milliseconds >= 5000000;

/*
Question 2
Find all the invoices whose total is between $5 and $15 dollars.
*/

select
invoiceid
from invoices
where total between 5 and 15;

/*
Question 3
Find all the customers from the following States: RJ, DF, AB, BC, CA, WA, NY.
*/

select 
* 
from customers
where state in ('RJ','DF','AB','BC','CA','WA','NY');

/*
Question 4
Find all the invoices for customer 56 and 58 where the total was between $1.00 and $5.00.
*/

select
*
from invoices
where customerid in (56,58) and total between 1 and 5;

/*
Question 5
Find all the tracks whose name starts with 'All'.
*/

select
*
from tracks
where name like 'All%';

/*
Question 6
Find all the customer emails that start with "J" and are from gmail.com.
*/

select
email
from customers
where email like 'J%' and email like '%gmail.com';

/*
Question 7
Find all the invoices from the billing city Brasília, Edmonton, and Vancouver and sort in descending order by invoice ID.
*/

select
*
from invoices
where billingcity in ('Brasília', 'Edmonton', 'Vancouver')
order by invoiceid desc;

/*
Question 8
Show the number of orders placed by each customer (hint: this is found in the invoices table) and sort the result by the number of orders in descending order.
*/

select
count(invoiceid), customerid
from invoices
group by customerid;

/*
Question 9
Show the number of orders placed by each customer (hint: this is found in the invoices table) and sort the result by the number of orders in descending order.
*/

select
albumid, count(trackid)
from tracks
group by albumid
having count(trackid) >=12 ;
