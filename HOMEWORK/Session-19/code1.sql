--follow-up question
--session-19=>code 1
--https://www.codechef.com/learn/course/sql-intermediate/SQ00BS03/problems/GSQ68E?tab=solution


/* Write a query to output a table with the list of all items in the supermarket. There already exit a table 'Item' there is another table 'Item_adn' The task is to combine these two tables. */

SELECT * FROM Item
UNION SELECT *
FROM Item_adn;
    