{{
    config(
        materialized='incremental',
        unique_key='id',
        incremental_strategy='merge',
        on_schema_change='append_new_columns'
    )
}}

select 
ID,
EVENT_TIME,
SQUID_NAME,
SUFFIX,
INK_COLOR,
INK_PRODUCED_OZ,
NOTES
from

{{source('produce','squid_inc')}}

{% if is_incremental() %}
where event_time > (select max(event_time) from {{ this }})
{% endif %}