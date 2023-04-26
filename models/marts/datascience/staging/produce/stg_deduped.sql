with row_numbered as (
        select
            _inner.*,
            row_number() over (
                partition by id, event_time, squid_name, suffix, loaded_at
                order by event_time desc
            ) as rn
        from {{ source('produce', 'dupeset') }} as _inner
    )

    select
        distinct data.*
    from {{ source('produce', 'dupeset') }} as data
    
    natural join row_numbered
    where row_numbered.rn = 1
    order by id asc