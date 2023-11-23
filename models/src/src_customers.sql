-- loading the customer source data. 

with raw_customers as (
    select
        *
    from {{source('jaffle_shop', 'raw')}}
)

select 
    id as customer_id,
    concat('first_name',' ', 'last_name') as customer_name
from raw_customers

