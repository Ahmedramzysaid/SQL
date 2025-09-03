/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select cast(min(LONG_W)as decimal(10,4))
from  STATION 
where   LAT_N  =  (select min(LAT_N)  from STATION where LAT_N > 38.7780  )