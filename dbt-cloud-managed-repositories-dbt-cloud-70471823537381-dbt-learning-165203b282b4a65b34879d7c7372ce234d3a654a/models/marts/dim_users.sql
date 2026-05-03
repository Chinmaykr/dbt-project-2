SELECT
    user_id,
    first_name,
    last_name,
    CONCAT(first_name,' ' , last_name) as full_name,
    email,
    country,
    created_at as user_created_at
FROM {{ ref ('stg_users')}}