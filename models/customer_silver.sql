select C_CUSTKEY, C_NAME, C_NATIONKEY, C_ACCTBAL 
from {{ source('tpch', 'customer_bronze') }} 
where C_CUSTKEY is not null and C_NATIONKEY != 21