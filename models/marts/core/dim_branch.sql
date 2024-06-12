with source as (
    select * from {{ ref('stg_demo_branch') }}
),

selected as (
    select
        BR_ID,
        BR_Name,
        CNT_Name
    from source
)

select * from selected