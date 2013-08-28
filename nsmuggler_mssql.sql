CREATE TABLE nsmuggler (i int not null,nvc NVARCHAR(255),c CHAR,vc VARCHAR(255), PRIMARY KEY (i));

DECLARE @i int = 0
WHILE @i < 256*256 BEGIN
    SET @i = @i + 1
    INSERT INTO nsmuggler (i,nvc,c,vc) VALUES (@i,NCHAR(@i),NCHAR(@i),NCHAR(@i));
END

SELECT COUNT(*) from nsmuggler;