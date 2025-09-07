/* Write your T-SQL query statement below */
select m.name
from SalesPerson m
where m.name not in (
    select x.name
from Orders y inner join Company  z on (z.com_id = y.com_id ) inner join SalesPerson  x on (x.sales_id  =  y.sales_id and z.name = 'RED')
)
