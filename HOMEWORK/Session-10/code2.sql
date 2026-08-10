--follow-up question
--session-10=>code 2
--https://www.codechef.com/learn/course/sql-intermediate/SQ00BS09/problems/GSQ85B

--Rearrange the following

SELECT cuisine, 
COUNT(CASE WHEN category = 'Veg' THEN 1 ELSE NULL END)
FROM Orders
GROUP BY cuisine;