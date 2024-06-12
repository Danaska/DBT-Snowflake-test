with source as (
    select * from {{ ref('int_dealer') }}
)
select * from source