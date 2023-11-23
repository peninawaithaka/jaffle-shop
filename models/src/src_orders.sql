-- load the orders source data

with raw_orders as (
    select
        *
    from
        {{source('jaffle_shop', 'raw')}}
)

select 
    id as order_id,
    user_id,
    order_date,
    status as order_status,
    _etl_loaded_at as load_date
from raw_orders


