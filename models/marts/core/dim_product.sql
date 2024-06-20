with source as (
    select * from {{ ref('stg_demo_product') }}
)

select * from source