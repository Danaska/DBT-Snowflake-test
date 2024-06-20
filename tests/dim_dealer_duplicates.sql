select *
from (
    select 
        Dealer_ID,
        Location_ID,
        CNT_ID,
        count(*) as count
    from {{ ref('dim_dealer') }}
    group by Dealer_ID, Location_ID, CNT_ID
) subquery
where count > 1