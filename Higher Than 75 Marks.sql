/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
Select  Name
from STUDENTS
where Marks > 75  
order by  RIGHT(Name, 3) , ID 