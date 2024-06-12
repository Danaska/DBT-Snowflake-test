with source as (
    select * from {{ ref('stg_demo_date') }}
),

selected as (
    select
        Date_Id,
        date,
        Year,
        Month,
        Quarter
    from source
)

select * from selected