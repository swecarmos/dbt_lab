{{ config(materialized="table") }}
select count(o_orderstatus) as orderstatus_count, o_orderstatus
from {{ ref("orders_silver") }}
group by o_orderstatus