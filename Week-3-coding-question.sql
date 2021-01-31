  /*
All of the questions in this quiz refer to the open source Chinook Database. 
Please familiarize yourself with the ER diagram in order to familiarize yourself with the table and column names in order to write accurate queries and get the appropriate answers.
https://ucde-rey.s3.amazonaws.com/DSV1015/ChinookDatabaseSchema.png
*/

/*
Question 1
Using a subquery, find the names of all the tracks for the album "Californication".
*/

select
name
from tracks
where albumid = (
    select albumid
    from albums
    where title = 'Californication'
)

/*
Question 2
Find the total number of invoices for each customer along with the customer's full name, city and email.
*/

select
count(invoiceid), firstname, lastname, city, email
from customers c
join invoices i on c.customerid = i.customerid
group by  c.customerid

/*
Question 3
Retrieve the track name, album, artistID, and trackID for all the albums.
*/

select
name, a.title, a.artistid, trackid
from tracks t
join albums a on t.albumid = a.albumid
where trackid = 12

/*
Question 4
Retrieve a list with the managers last name, and the last name of the employees who report to him or her.
*/

select
M.lastname as Manager,
E.lastname as Employee
from employees E 
inner join employees M on E.reportsto = M.employeeid

/*
Question 5
Find the name and ID of the artists who do not have albums. 
*/

select
ar.name, ar.artistid
from artists ar
left join albums al on ar.artistid = al.artistid
where title is null;

/*
Question 6
Use a UNION to create a list of all the employee's and customer's first names and last names ordered by the last name in descending order.
*/

select 
firstname,lastname
from employees
union
select
firstname, lastname
from customers
order by lastname desc;

/*
Question 7
See if there are any customers who have a different city listed in their billing city versus their customer city.
*/

select
c.firstname, c.lastname,
c.city, i.billingcity
from customers c
join invoices i on c.customerid = i.customerid
where c.city <> i.billingcity
