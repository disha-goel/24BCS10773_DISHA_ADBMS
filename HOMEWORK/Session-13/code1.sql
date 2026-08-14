--follow-up question
--session-13=>code 1
--https://www.codechef.com/learn/course/sql-intermediate/SQ00BS03/problems/GSQ68A?tab=statement

/* Write a query to join the table 'Customer' and 'Purchase' using Customer_id as the common column in the table.
Output the joined table. */


SELECT *
FROM Customer
JOIN Purchase
ON Customer.Customer_id = Purchase.Customer_id;