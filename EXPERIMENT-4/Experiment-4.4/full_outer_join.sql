--Experiment-4.4=>
--https://www.codechef.com/learn/course/sql-intermediate/SQ00BS01/problems/ASQL01B?tab=statement

-- Write a query to do the following:
-- FULL OUTER JOIN the 'student' and 'course' tables using 'Course_id' to match the tables. Output the joined table.


SELECT * FROM STUDENT 
FULL OUTER JOIN COURSE
ON STUDENT.Course_id=COURSE.Course_id;