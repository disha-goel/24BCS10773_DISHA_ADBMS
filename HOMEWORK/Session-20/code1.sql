--follow-up question
--session-20=>code 1
--http://codechef.com/learn/course/sql-intermediate/SQ00BS03/problems/GSQ68D?tab=solution


/* Write a query to output a table with the list of possible item all the customers could be buy. The output table should contain the columns 'Customer_Name' and 'Item_Name'. */

SELECT Customer_Name,Item_Name
FROM Customer
CROSS JOIN Item;