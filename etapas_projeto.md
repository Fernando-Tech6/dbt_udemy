# Etapas do projeto na criação de novas tabelas utilizando o banco de dados *northwind*.


## Tabela Customers
 
Remover clientes duplicados, O cliente vai estar duplicado quando o *company_name* and *contact_name* estiverem duplicados

## Tabela employees

Criar colunas calculadas:
* Age (birth_date)
* LenghtofService (hire_date)
* Name (last_name + first_name)

## OrderDetails (utilizando a order_details e products)
Criar colunas calculadas:
* total (unit_price * quantity)
* discount (total (products.unitprice * quantity))


## Tabela Desnormalizada
1. left join products/suppliers and products/categories
2. left join order_detais/resultado_1
3. left join orders/customers and orders/employees and orders/shippers
4. inner join resultado_2/resultado_3


## Particionamento
Criar uma tabela com dados por ano.
* Ano: order.order_date
Cada ano uma tabela!!
