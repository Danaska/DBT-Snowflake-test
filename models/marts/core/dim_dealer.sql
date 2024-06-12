with source as (
    select * from {{ ref('int_dealer') }}
),

selected as (
    select
        Dealer_ID,
        Dealer_Name,
        Location_ID,
        Location_Name,
        CNT_ID,
        CNT_Name
    from source
)

select * from selected