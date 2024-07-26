with 

source as (

    select * from {{ source('tpch_uc', 'orders_100') }}

),

renamed as (

    select
        o_orderkey,
        o_custkey,
        o_orderstatus,
        o_totalprice,
        o_orderdate,
        o_orderpriority,
        o_clerk,
        o_shippriority,
        o_comment,
        loaded_at

    from source

)

select * from renamed
