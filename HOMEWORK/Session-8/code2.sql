--follow-up question
--session-8=>code 2
--https://datalemur.com/questions/tesla-unfinished-parts

SELECT part, assembly_step
FROM parts_assembly
WHERE finish_date IS NULL;
