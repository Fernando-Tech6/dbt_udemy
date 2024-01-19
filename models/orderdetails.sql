SELECT
order_id
,A.product_id
,quantity
,ROUND(A.unit_price * A.quantity,2) AS total
,ROUND((B.unit_price * quantity) - total, 2 ) AS discount
,B.product_name
,B.supplier_id
,B.category_id
FROM {{source('sources', 'order_details')}}  AS A
LEFT JOIN {{source('sources', 'products')}} AS B ON A.product_id = B.product_id