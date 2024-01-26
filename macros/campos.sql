/**
Criando uma macro para retornar os campos em um select.
**/

{% macro retorna_campos()%}
{{ return('
category_name
,suppliers
,product_name
,product_id
')

}}
{%endmacro%}