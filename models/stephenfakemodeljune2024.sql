{{
    config(materialized='table')
}}

with source as (select * from {{ source("ecommerce", "customers") }})

select id as customer_id, split_part(name, ' ', 1) as first_name
from source
