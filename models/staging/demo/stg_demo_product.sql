with source as (

    select * from {{ source('demo', 'rawproduct') }}

),

selected as (

    select

        Product_ID,
        Product_Name,
        Model_ID,
        Model_Name

    from source

)

select * from selected