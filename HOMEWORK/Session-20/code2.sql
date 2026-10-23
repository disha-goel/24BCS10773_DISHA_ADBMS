--follow-up question
--session-20=>code 2
--https://www.codechef.com/learn/course/sql-intermediate/SQ00BS01/problems/GSQ65?tab=statement


/* Write a query cross join the table 'student' and 'course' and check out all possible courses a student can opt. Output the table after cross join */

SELECT St_Name,Course_Name 
FROM student
CROSS JOIN course;