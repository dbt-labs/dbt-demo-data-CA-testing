with

orders as (

    select * from {{ ref('customers') }}

)

select * from orders