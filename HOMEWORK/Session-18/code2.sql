--follow-up question
--session-18=>code 2
--https://www.codechef.com/learn/course/sql-intermediate/SQ00BS01/problems/GSQ61A?tab=solution

/* Write a query to join the table 'student' and 'course' using 'Course_id' to match both the tables and output the joined table. */

select *
from student
join course
on student.course_id = course.course_id;