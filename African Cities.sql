/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select  c.NAME
from  CITY c  inner join COUNTRY ct on ( c.COUNTRYCODE =  ct.CODE and ct.CONTINENT = 'Africa') 