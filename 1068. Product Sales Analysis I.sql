# Write your MySQL query statement below
select
    product_name,
    year,
    price
from
    Product
    left join Sales on Sales.product_id = Product.product_id
where
    Sales.product_id is not null