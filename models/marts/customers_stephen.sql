with

orders as (

    select * from {{ ref('stg_orders') }}

)

select *