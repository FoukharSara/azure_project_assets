CREATE VIEW gold.calendar
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://hahahadatalake.blob.core.windows.net/silver/AdventureWorks_Calendar',
    FORMAT = 'PARQUET'
)as QUER1;





CREATE VIEW gold.customers
AS 
SELECT *
FROM OPENROWSET(
    BULK 'https://hahahadatalake.blob.core.windows.net/silver/AdventureWorks_Customers',
    FORMAT = 'PARQUET'
)as QUER2


CREATE VIEW gold.products
AS 
SELECT *
FROM OPENROWSET(
    BULK 'https://hahahadatalake.blob.core.windows.net/silver/AdventureWorks_Product',
    FORMAT = 'PARQUET'
)as QUER3


CREATE VIEW gold.procateg
AS 
SELECT *
FROM OPENROWSET(
    BULK 'https://hahahadatalake.blob.core.windows.net/silver/AdventureWorks_ProductCategory',
    FORMAT = 'PARQUET'
)as QUER4


CREATE VIEW gold.ret
AS 
SELECT *
FROM OPENROWSET(
    BULK 'https://hahahadatalake.blob.core.windows.net/silver/AdventureWorks_Return',
    FORMAT = 'PARQUET'
)as QUER5



CREATE VIEW gold.sales
AS 
SELECT *
FROM OPENROWSET(
    BULK 'https://hahahadatalake.blob.core.windows.net/silver/AdventureWorks_Sales',
    FORMAT = 'PARQUET'
)as QUER6



CREATE VIEW gold.subcat 
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://hahahadatalake.blob.core.windows.net/silver/AdventureWorks_Subcategory',
    FORMAT = 'PARQUET'
)as QUER7


CREATE VIEW gold.terr 
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://hahahadatalake.blob.core.windows.net/silver/AdventureWorks_Territory',
    FORMAT = 'PARQUET'
)as QUER8

















