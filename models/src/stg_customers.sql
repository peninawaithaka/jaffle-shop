-- loading the customer source data. 
-- Concat firstname and lastname as customer name 

-- by default the model is materialized as a view.
-- alias as staging_customers changes the name of the model identifier in the database
{{
    config(
        alias = "staging_customers" 
    )
}}

with raw_customers as (
    select
        *
    from {{ source('jaffle_shop', 'customers') }}
)

select 
    id as customer_id,
    concat(first_name,' ', last_name) as customer_name
from raw_customers

