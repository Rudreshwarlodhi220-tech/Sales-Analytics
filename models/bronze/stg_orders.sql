SELECT 
*
FROM {{ source('sales_source', 'orders')}}