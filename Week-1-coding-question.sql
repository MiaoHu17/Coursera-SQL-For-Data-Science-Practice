/*
Question 1
For all of the questions in this quiz, we are using the Chinook database. All of the interactive code blocks have been setup to retrieve data only from this database.

https://archive.codeplex.com/?p=chinookdatabase

Retrieve all the records from the Employees table.*/

select
*
from employees

/*
Question 2
Retrieve the FirstName, LastName, Birthdate, Address, City, and State from the Employees table.
*/

select 
firstname, lastname, birthdate, address, city, state 
from employees

/*
Question 2
Retrieve the FirstName, LastName, Birthdate, Address, City, and State from the Employees table.
*/
select * 
from tracks
limit 20;
