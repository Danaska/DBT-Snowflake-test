with dealer as (
    
    select * from {{ ref('stg_demo_dealer') }}

),

country as (

    select * from {{ ref('stg_demo_country') }}

)
select 

    dealer.Dealer_ID,dealer.Dealer_Name, dealer.Location_ID, dealer.Location_Name, country.CNT_ID, dealer.CNT_Name

from
    dealers
inner join country
        on dealer.CNT_ID = country.CNT_ID