with source as (

    select * from {{ source('demo', 'rawdate') }}

),

casted as (

select 
    Date_Id,
    to_date(Date, 'DD/MM/YYYY') as date,
    case 
        when Year = 'YYYY' then extract(year from to_date(Date, 'DD/MM/YYYY'))
        else cast(Year as int)
    end as Year,
    cast(Month as int) as Month,
    Quarter
from source

)

select * from casted