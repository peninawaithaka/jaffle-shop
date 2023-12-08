--snapshots implement type-2 slowly changing dimensions over mutable source tables. 
--Order_status changes from pending to shipped to returned 

{% snapshot orders_snapshot %}

{{
    config(
        target_database='jaffle_shop',
        target_schema='raw',
        unique_key='id',
        strategy='check',
        check_cols=['status']
        
    )
}}

-- define the results you want to snapshot overtime
select * from {{ source('jaffle_shop', 'orders')}}

{% endsnapshot %}