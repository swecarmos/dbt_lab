select *
from {{ source("tpch", "orders_bronze") }}
where o_orderkey is not null and o_order_date >= date '1990-01-01'