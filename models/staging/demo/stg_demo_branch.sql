with source as (

    select * from {{ source('demo', 'rawbranch') }}

),

renamed as (

    select

        Branch_ID as BR_ID,
        Branch_Name as BR_Name,
        Country_Name as CNT_Name

    from source

)

select * from renamed