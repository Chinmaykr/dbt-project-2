SELECT
    order_item_id,
    order_id,
    user_id,
    product_id,
    product_name,
    category,
    department,
    sale_price,
    cost,
    retail_price,
    profit,
    status,
    order_date,
    created_at
FROM {{ ref('int_order_items_enriched') }}