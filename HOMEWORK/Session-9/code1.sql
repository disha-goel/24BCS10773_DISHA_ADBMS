--follow-up question
--session-9=>code 1
--https://www.codechef.com/learn/course/sql-intermediate/SQ00BS02/problems/SQLKEY01C?tab=statement

-- Write a delete query to delete John Doe's details from Customers table and notice the changes in the Orders table

DELETE FROM Customers WHERE customer_name = 'John Doe';

SELECT * FROM Orders;
