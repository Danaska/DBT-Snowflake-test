with source as (

    select * from {{ source('demo', 'rawrevenue') }}

),

casted as (

    select

        Dealer_ID,
        Model_ID,
        Branch_ID,
        Date_ID,
        CAST(Units_Sold as INT) as Units_Sold,
        CAST(Revenue as INT) as Revenue

    from source

)

select * from casted