/**
Criando tabela para demonstrar o uso de variáveis.
E utilizando uma macro para retornar o nome dos campos

**/

SELECT
{{retorna_campos()}}
FROM {{ref('tb_product_order')}}
WHERE category_name = '{{var('category')}}'

