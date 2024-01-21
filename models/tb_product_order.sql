/**
Realizando a etapa de desnormalização 
das tabelas. Utilizando algumas que ainda estão em source
e outras tabelas como Ref.
**/


WITH 

tb_prod_supp
AS 
(


SELECT
A.product_id
,A.product_name
,A.quantity_per_unit
,A.unit_price
,C.category_name
,B.company_name AS suppliers

FROM {{source ("sources", "products")}} AS A
LEFT JOIN {{source ("sources", "suppliers")}} AS B ON A.supplier_id
 = B.supplier_id
 LEFT JOIN {{source ("sources", "categories")}} AS C ON A.category_id
 = C.category_id

),

tb_order as(


    SELECT 
    prod.*
    ,od.order_id
    ,od.quantity
    ,od.discount
    FROM {{ref('orderdetails')}}  AS od
    LEFT JOIN tb_prod_supp AS prod ON od.product_id = prod.product_id
),

tb_order_customer
AS 
(
SELECT
ord.order_date
,ord.order_id
,ct.company_name AS customer
,emp.name AS employee
,emp.age
,emp.lenghtofservice
FROM {{source("sources", "orders")}} AS ord
LEFT JOIN {{ref("customers")}} AS ct ON ord.customer_id = ct.customer_id
LEFT JOIN {{ref("employees")}} AS emp ON ord.employee_id = emp.employee_id
LEFT JOIN {{source("sources", "shippers")}} AS sh ON sh.shipper_id = ord.ship_via
)


SELECT
ord.*
,orc.order_date
,orc.customer
,orc.employee
,orc.age
,orc.lenghtofservice
FROM tb_order AS ord
INNER JOIN tb_order_customer AS orc ON ord.order_id = orc.order_id 

