/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
declare @x int  = 20
while @x  > 0
begin 
declare @y int = @x  , @str varchar(40) =''  
 while (@y > 0)
 begin
 set @str+= '* '
 set @y -= 1 ;
 end
 select @str 
 set @x -=1 
end