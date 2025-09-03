/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select    CEILING(avg(salary*1.0) -avg(cast (replace(cast(salary as varchar),'0' , '') as  int)*1.0)) 
from EMPLOYEES  