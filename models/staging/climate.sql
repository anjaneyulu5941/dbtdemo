{{ config (
    materialized="table"
)}}

with cte as (
select e.postal_code,e.AVG_OF__DAILY_AVG_TEMPERATURE_WETBULB_F,c.country,c.MIN_TEMPERATURE_AIR_2M_F
from climatology_day e join history_day c on e.postal_code =c.postal_code)
select * from cte