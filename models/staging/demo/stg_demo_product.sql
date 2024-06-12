with source as (

    select * from {{ source('demo', 'rawproduct') }}

),

renamed as (

    select

        Product_ID as Product_Code,
        Product_Name,
        Model_ID,
        Model_Name

    from source

)

select * from renamed