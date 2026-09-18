
--PROCEDURES=>
--Experiment=>8.1
--Problem Statement:
--You're tasked with creating a postgre sql stored procedure for a company database that manages employees salary.The database contains table
called employees.

CREATE TABLE EMPLOYEE (
    EMP_ID INT PRIMARY KEY,
    EMP_NAME VARCHAR(50),
    SALARY NUMERIC(10,2)
);

INSERT INTO EMPLOYEE VALUES
(201, 'Amit', 30000),
(202, 'Rahul', 40000),
(203, 'Priya', 50000);

SELECT * FROM EMPLOYEE;

CREATE OR REPLACE PROCEDURE UPDATE_SAL_PROC2(
    IN P_EMPID INT,
    OUT STATUS VARCHAR(20),
    INOUT P_SALARY NUMERIC
)
AS $$
DECLARE
    CURRENT_SAL NUMERIC(10,2);
BEGIN

    SELECT SALARY
    INTO CURRENT_SAL
    FROM EMPLOYEE
    WHERE EMP_ID = P_EMPID;

    IF NOT FOUND THEN
        RAISE EXCEPTION 'EMPLOYEE NOT FOUND';
    END IF;

    P_SALARY := CURRENT_SAL + P_SALARY;

    UPDATE EMPLOYEE
    SET SALARY = P_SALARY
    WHERE EMP_ID = P_EMPID;

    STATUS := 'Success';

END;
$$ LANGUAGE PLPGSQL;

CALL UPDATE_SAL_PROC2(201, NULL, 5200);

SELECT * FROM EMPLOYEE;