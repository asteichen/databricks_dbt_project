select year, country, whosis_000001 as lifeexpectancy
from {{ ref("fct_health_indicators_pivot") }}
where year <= 2023