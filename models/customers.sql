
/**
O cliente vai estar duplicado quando o company_name and contact_name estiverem duplicados.
Utilizando o Row_Number para tratar os dados duplicados.
**/

WITH tb1
AS (
SELECT 
*
, ROW_NUMBER() OVER (PARTITION BY company_name, contact_name ORDER BY company_name) AS idx
FROM {{ source("sources", "customers") }}
)

SELECT 
customer_id
,company_name
,contact_name
,contact_title
,address
,city
,region
,postal_code
,country
,phone
FROM tb1 
WHERE idx = 1