with source as (select * from {{ source("ecommerce", "customers") }})

select
    split_part(name, ' ', 1) as first_name
from source
