DECLARE @x INT = 2, @str VARCHAR(1004) = '';

WHILE @x <= 1000 
BEGIN
    IF @x = 2 OR @x = 3 
        SET @str += CAST(@x AS VARCHAR) + '&';
    ELSE 
    BEGIN
        DECLARE @j INT = 2, @flag BIT = 0;
        WHILE (@j * @j <= @x)
        BEGIN 
            IF @x % @j = 0
            BEGIN
                SET @flag = 1;
                BREAK;
            END
            SET @j += 1;
        END
        IF @flag = 0 
        begin
        if(@x != 997)
        SET @str += CAST(@x AS VARCHAR) + '&';
        else
          SET @str += CAST(@x AS VARCHAR) 
        end
            
    END
    SET @x += 1;
END

SELECT @str;
