with

rrr as (

    select * from {{ ref('customers') }}

)

select * from rrr