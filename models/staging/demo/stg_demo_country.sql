with source as (

    select * from {{ source('demo', 'rawcountry') }}

),

renamed as (

    select
    
        Country_ID as CNT_ID,
        Country_Name as CNT_Name

    from source

)

select * from renamed