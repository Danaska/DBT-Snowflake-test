with source as (

    select * from {{ source('demo', 'rawdealer') }}

),

renamed as (

    select

        Dealer_ID,
        Dealer_Name,
        Location_ID,
        Location_Name,
        Country_ID as CNT_ID

    from source

)

select * from renamed