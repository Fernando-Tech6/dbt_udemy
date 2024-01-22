/**
Criando tabela para demonstrar o uso de variáveis.
**/

SELECT
*
FROM {{ref('tb_product_order')}}
WHERE category_name = '{{var('category')}}'

