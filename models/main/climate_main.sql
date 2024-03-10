{{ config (
    materialized="table"
)}}

with cte as(
    select * from {{ref("climate")}}
)
select $1 as col1,$2 as col2 from cte