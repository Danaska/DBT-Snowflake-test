with source as (
    select * from {{ ref('stg_demo_date') }}
)

select * from source