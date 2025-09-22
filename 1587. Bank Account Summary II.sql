/* Write your T-SQL query statement below */
select x.name ,  sum(amount) as balance    
from Users  x   inner join  Transactions  y on(x.account =  y.account)
group by x.name
having  sum(amount) >10000   
