--Experiment-4.1=>
--https://www.codechef.com/learn/course/sql-intermediate/SQ00BS01/problems/ASQL01D?tab=statement


select c.customer_name,o.order_date
from Customers c 
join Orders o
on c.customer_id = o.customer_id;

select c.customer_name,o.product_name
from Customers c 
left join Orders o 
on c.customer_id = o.customer_id;

select p.product_name,o.order_date 
from products p 
join Orders o
on p.product_name = o.product_name;