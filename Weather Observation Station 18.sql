/*
Enter your query here.
*/
select cast((max(LAT_N) - min(LAT_N)) + (max(LONG_W ) - min(LONG_W ))as  decimal(10,4))
from  STATION 