with

customers_no_first_name as (

    

--    select * from {{ ref('stg_customers') }}
select * from {{ ref('customers.v3') }}
)
select *