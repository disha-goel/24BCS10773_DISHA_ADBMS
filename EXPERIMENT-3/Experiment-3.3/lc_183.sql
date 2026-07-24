--Experiment-3.3=>
--https://leetcode.com/problems/customers-who-never-order/description/

SELECT name AS Customers
FROM Customers
WHERE
    id NOT IN (
        SELECT customerId
        FROM Orders
    );