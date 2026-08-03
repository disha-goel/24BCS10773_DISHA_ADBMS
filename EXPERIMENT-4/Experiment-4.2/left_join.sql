--Experiment-4.2=>
--https://www.codechef.com/learn/course/sql-intermediate/SQ00BS01/problems/GSQ63?tab=statement

     SELECT *
     FROM student as s1
     JOIN course as c1
     ON s1.Course_id=c1.Course_id;
     
      SELECT *
     FROM student as s1
     LEFT JOIN course as c1
     ON s1.Course_id=c1.Course_id;
     
     