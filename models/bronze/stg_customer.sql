SELECT 
*
FROM {{ source('sales_source', 'customer') }}