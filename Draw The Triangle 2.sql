/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
declare @x int  = 20
while @x  > 0
begin 
declare @y int =0  , @str varchar(40) =''  
 while ((21-@x) > @y)
 begin
 set @str+= '* '
 set @y += 1 ;
 end
 select @str 
 set @x -=1 
end