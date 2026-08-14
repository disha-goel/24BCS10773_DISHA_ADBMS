--follow-up question
--session-15=>code 2
--https://www.codechef.com/learn/course/sql-intermediate/SQ00BS01/problems/GSQ62?tab=statement


/* Write a query to join the tables 'student' and 'course' and output the same. Check if you can find the course with id ENG201 in the output */

SELECT *
FROM student
JOIN course
ON student.Course_id = course.Course_id;