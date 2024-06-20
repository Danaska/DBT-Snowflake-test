with source as (
    select * from {{ ref('stg_demo_revenue') }}
),

selected as (
    select
        Dealer_ID,
        Model_ID,
        Branch_ID as BR_ID,
        Date_ID,
        Units_Sold,
        Revenue
    from source
),

fact_table as (
    select
        d.Dealer_ID,
        m.Model_ID,
        b.BR_ID,
        dte.Date_ID,
        s.Units_Sold,
        s.Revenue
    from selected s
    left join {{ ref('dim_dealer') }} d on s.Dealer_ID = d.Dealer_ID
    left join {{ ref('dim_product') }} m on s.Model_ID = m.Model_ID
    left join {{ ref('dim_branch') }} b on s.BR_ID = b.BR_ID
    left join {{ ref('dim_date') }} dte on s.Date_ID = dte.Date_ID
)

select * from fact_table
order by Dealer_ID asc

