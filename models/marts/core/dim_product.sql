with source as (
    select * from {{ ref('stg_demo_product') }}
),

selected as (
    select
        Product_ID,
        Product_Name,
        Model_ID,
        Model_Name
    from source
)

select * from selected