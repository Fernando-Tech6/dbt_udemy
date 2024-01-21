SELECT
*
FROM {{ref("tb_product_order")}}
WHERE date_part(year, order_date) = 2021