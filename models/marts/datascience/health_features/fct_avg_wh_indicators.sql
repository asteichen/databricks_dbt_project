select 
country,
avg(WHS4_129) as avg_WHS4_129 ,
avg(WHS8_110) as avg_WHS8_110 ,
avg(WHS4_100) as avg_WHS4_100 ,
avg(WHS4_544) as avg_WHS4_544 ,
avg(WHS4_117) as avg_WHS4_117 ,
avg(WSH_WATER_BASIC) as avg_WSH_WATER_BASIC ,
avg(WSH_SANITATION_SAFELY_MANAGED) as avg_WSH_SANITATION_SAFELY_MANAGED ,
avg(WHS3_62) as avg_WHS3_62 ,
avg(WSH_WATER_SAFELY_MANAGED) as avg_WSH_WATER_SAFELY_MANAGED ,
avg(WHS3_57) as avg_WHS3_57 
from {{ ref('feat_health_indicators') }}
group by country