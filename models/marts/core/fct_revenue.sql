with source as (
    select * from {{ ref('stg_demo_revenue') }}
),

selected as (
    select
        Dealer_ID,
        Model_ID,
        Branch_ID,
        Date_ID,
        Units_Sold,
        Revenue
    from source
),

fact_table as (
    select
        s.Dealer_ID,
        d.Dealer_Name,
        s.Model_ID,
        m.Model_Name,
        s.Branch_ID,
        b.Branch_Name,
        s.Date_ID,
        dte.Date,
        s.Units_Sold,
        s.Revenue
    from selected s
    join {{ ref('dim_dealer') }} d on s.Dealer_ID = d.Dealer_ID
    join {{ ref('dim_product') }} m on s.Model_ID = m.Model_ID
    join {{ ref('dim_branch') }} b on s.Branch_ID = b.Branch_ID
    join {{ ref('dim_date') }} dte on s.Date_ID = dte.Date_ID
)

select * from fact_table
