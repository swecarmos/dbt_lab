{{ config(materialized="table") }}
select
    o.o_orderkey,
    o.o_totalprice,
    l.l_orderkey,
    l.l_discount,
    case
        when (l.l_discount >= 0.06) then 'discounted' else 'not_discounted'
    end as discount
from {{ ref("orders_silver") }} as o
left join {{ ref("lineitem_silver") }} as l on o.o_orderkey = l.l_orderkey