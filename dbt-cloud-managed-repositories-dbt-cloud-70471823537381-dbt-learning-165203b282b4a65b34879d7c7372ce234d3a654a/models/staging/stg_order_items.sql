SELECT
    id AS order_item_id,
    order_id,
    user_id,
    product_id,
    status,
    sale_price
FROM {{ source('thelook', 'order_items') }}