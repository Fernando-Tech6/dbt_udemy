/**
Criando um modelo utilizando um arquivo .csv criado na pasta seeds.
**/

SELECT
sh.*
,em.shipper_email
FROM {{source('sources', 'shippers')}} AS sh
LEFT JOIN {{ref('shippers_emails')}} AS em ON sh.shipper_id = em.shipper_id

