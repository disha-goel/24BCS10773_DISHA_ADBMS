--follow-up question
--session-21=>code 1
--https://www.hackerrank.com/challenges/sql-projects/problem

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

SELECT START_DATE
    , END_DATE
FROM (
    SELECT MIN(START_DATE) AS START_DATE
        , MAX(END_DATE) AS END_DATE
        , MAX(END_DATE) - MIN(START_DATE) AS PAY_DAY
    FROM (
        SELECT 
            ROWNUM
            , Task_ID
            , START_DATE
            , END_DATE
            , START_DATE - ROWNUM AS G_START_DATE
        FROM 
        (
            SELECT *
            FROM Projects
            ORDER BY START_DATE
        )
    )
    GROUP BY G_START_DATE
)
ORDER BY PAY_DAY, START_DATE;

exit;