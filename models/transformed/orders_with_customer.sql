{{ config(materialized='table') }}


SELECT
    o.order_id,
    c.first_name,
    c.last_name,
    o.order_date,
    o.total_amount
FROM {{source('ISHAN_DIT_45604','ORDER1')}} o
JOIN {{source('ISHAN_DIT_45604','CUSTOMER')}} c ON o.customer_id = c.customer_id
