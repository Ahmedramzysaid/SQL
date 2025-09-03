select y.CONTINENT,  FLOOR(avg(x.POPULATION))
from CITY  x  inner join COUNTRY  y on( x.COUNTRYCODE = y.CODE)
group  by  y.CONTINENT