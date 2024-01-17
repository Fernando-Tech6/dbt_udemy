# Etapas do projeto na criação de novas tabelas utilizando o banco de dados *northwind*.


## Tabela Customers
 
Remover clientes duplicados, quando os seguintes campos tiverem o mesmo registro
* company_name
* contact_name

## Tabela employees

Criar colunas calculadas:
* Age (birth_date)
* LenghtofService (hire_date)
* Name (last_name + first_name)

## Detalhes do Pedido
Criar colunas calculadas:
* total (unit_price * quantity)
* discount (total (products.unitprice * quantity))


## Tabela Desnormalizada
1. left join products/suppliers and products/categories
2. left join order_detais/resultado_1
3. left join orders/customers and orders/employees and orders/shippers
4. inner join resultado_2/resultado_3


## Particionamento

* Ano: order.order_date
Cada ano um modelo!!
