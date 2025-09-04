/* Write your T-SQL query statement below */
select  product_name , sum(unit)as unit                
from Products  x  inner join  Orders y on (x.product_id = y.product_id  and   format(order_date ,'yyyy-MM') = '2020-02'  )  
group by   product_name
having sum(unit) >= 100