---------------------------------
-- create master key first
---------------------------------

CREATE MASTER KEY ENCRYPTION BY PASSWORD 'YourStrongPasswordHere!'
---------------------------------
-- create database scoped credential    

Create database SCOPED CREDENTIAL cred_sara
WITH 
    IDENTITY = 'Managed Identity'


---------------------------------
-- create external data source
---------------------------------
CREATE EXTERNAL DATA SOURCE source_silver
WITH(
    LOCATION  = 'https://hahahadatalake.blob.core.windows.net/silver',
    CREDENTIAL = cred_sara
)
CREATE EXTERNAL DATA SOURCE source_gold
WITH(
    LOCATION  = 'https://hahahadatalake.blob.core.windows.net/gold',
    CREDENTIAL = cred_sara
)
---------------------------------
-- create external file format
---------------------------------
CREATE EXTERNAL FILE FORMAT format_parquet
WITH(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)


--------------------------------
-- External Table EXTSALES
--- from view instead of doing and typing the whole syntaxe, views are good
--------------------------------
CREATE EXTERNAL TABLE gold.extsales
WITH(
    LOCATION ='extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)AS 
SELECT * FROM gold.sales

SELECT * from gold.extsales















 