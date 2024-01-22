
/**
Criando um exemplo de materiazação como table e depois como incremental para inserir novos dados.

Foi inserido um novo registro na source (categories)

INSERT INTO categories
VALUES (9, 'IT', 'Computers');

E será realizado a ingestão incremental desse registro.
Adicionando o campo chave(category_id)

**/


{{

config(
    materialized='incremental',
    unique_key='category_id'  
)

}}


SELECT * FROM {{source('sources', 'categories')}}




