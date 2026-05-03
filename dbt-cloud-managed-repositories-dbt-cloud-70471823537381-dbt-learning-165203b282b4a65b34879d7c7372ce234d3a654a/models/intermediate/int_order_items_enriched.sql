SELECT
    oi.order_item_id,
    oi.order_id,
    oi.user_id,
    oi.product_id,
    oi.sale_price,
    oi.status,

    -- product details
    p.product_name,
    p.category,
    p.department,
    p.cost,
    p.retail_price,

    -- calculated fields
    ROUND(oi.sale_price - p.cost, 2) AS profit,

    -- order details
    o.order_date,
    o.created_at

FROM {{ ref('stg_order_items')}} oi
inner join {{ ref('stg_products')}} p
on oi.product_id = p.product_id
inner join {{ ref('stg_orders')}} o
on oi.order_id = o.order_id