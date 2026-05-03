SELECT
    id AS product_id,
    name AS product_name,
    category,
    department,
    cost,
    retail_price
FROM {{ source('thelook','products') }}
WHERE name IS NOT NULL