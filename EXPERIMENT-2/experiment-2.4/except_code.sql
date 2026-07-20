/*
Experiment-2.4=>
https://www.codechef.com/learn/course/sql-intermediate/SQ00BS06/problems/GSQ77?tab=Submissions
*/



/* Write a query to output the name of the fruits (f_name) from the table 'fruit' which are not present in the table 
inventory(f_name column has the name of the fruits and inv_name has the name of the items in inventory). */

Select f_name from fruit
EXCEPT
Select inv_name from inventory;