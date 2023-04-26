with source as (

    select * from {{ source('health', 'substance_use_and_mental_health_indicators_usa_csv') }}

),

renamed as (

    select
    GHO__CODE_ as GHO_CODE,
    GHO__DISPLAY_ as GHO_DISPLAY,
    GHO__URL_ as GHO_URL,
    PUBLISHSTATE__CODE_ as PUBLISHSTATECODE,
    PUBLISHSTATE__DISPLAY_ as PUBLISHSTATEDISPLAY,
    PUBLISHSTATE__URL_ as PUBLISHSTATEURL,
    YEAR__CODE_ as YEAR_CODE,
    YEAR__DISPLAY_ as YEAR_DISPLAY,
    YEAR__URL_ as YEAR_URL,
    REGION__CODE_ as REGION_CODE,
    STARTYEAR as STARTYEAR,
    ENDYEAR as ENDYEAR,
    REGION__DISPLAY_ as REGION_DISPLAY,
    REGION__URL_ as REGION_URL,
    WORLDBANKINCOMEGROUP__CODE_ as WORLDBANKINCOMEGROUP_CODE,
    WORLDBANKINCOMEGROUP__DISPLAY_ as WORLDBANKINCOMEGROUP_DISPLAY,
    WORLDBANKINCOMEGROUP__URL_ as WORLDBANKINCOMEGROUP_URL,
    COUNTRY__CODE_ as COUNTRY_CODE,
    COUNTRY__DISPLAY_ as COUNTRY_DISPLAY,
    COUNTRY__URL_ as COUNTRY_URL,
    SEX__CODE_ as SEX_CODE,
    SEX__DISPLAY_ as SEX_DISPLAY,
    SEX__URL_ as SEX_URL,
    Display_Value as Display_Value,
    Numeric as Numeric,
    Low as Low,
    High as High,
    StdErr as StdErr,
    StdDev as StdDev,
    Comments as Comments

    from source
    where GHO__CODE_ not like '#%'

)

 select * from renamed
