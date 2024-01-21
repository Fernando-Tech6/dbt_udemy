/**
Criando um exemplo de materiazação como Ephemeral
**/

{{

config(
    materialized='ephemeral'
)

}}


SELECT * FROM {{source('sources', 'categories')}}