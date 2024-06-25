with

customers_without_first_name as (

    select * from {{ ref('customers') }}

),

first_names as (
    select * from {{ ref('stephenfakemodeljune2024') }}    
),

joined as (
    select * from customers_without_first_name
    join first_names using (customer_id) 
)

select * from joined