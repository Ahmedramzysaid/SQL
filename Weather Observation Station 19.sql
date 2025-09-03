/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select cast(SQRT(POWER(min(LAT_N)- max(LAT_N),2) + POWER(min(LONG_W)- max(LONG_W),2))as decimal(10,4))
from STATION