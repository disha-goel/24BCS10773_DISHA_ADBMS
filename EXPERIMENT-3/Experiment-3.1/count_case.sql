--Experiment-3.1=>https://www.codechef.com/learn/course/sql-intermediate/SQ00BS08/problems/GSQ82


/* Write a query to count the number of students across departments who has scored more than 80 marks.*/

SELECT department, 
COUNT(CASE WHEN marks> 80 THEN 1 ELSE NULL END) as Dept_HighScore_Count
FROM student
GROUP BY department;
