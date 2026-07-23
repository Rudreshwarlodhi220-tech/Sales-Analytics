SELECT
    order_id,
    customer_id,
    order_date,
    amount,
    status
    
FROM {{ ref('stg_orders') }}