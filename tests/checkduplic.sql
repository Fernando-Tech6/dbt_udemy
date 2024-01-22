/**
Checar dados duplicado de uma tabela transformada
**/

SELECT
COUNT(*) As Total
,company_name
,contact_name

FROM {{ref("customers")}}
GROUP BY 2,3
HAVING Total > 1 
