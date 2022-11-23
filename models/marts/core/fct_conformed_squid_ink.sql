select * from {{ ref('fct_partition_var_squid') }}
where loaded_at = (select max(loaded_at) from {{ ref('fct_partition_var_squid') }})