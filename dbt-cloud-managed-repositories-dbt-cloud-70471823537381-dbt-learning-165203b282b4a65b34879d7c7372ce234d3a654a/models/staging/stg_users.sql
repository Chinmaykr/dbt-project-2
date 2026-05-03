SELECT
    id AS user_id,
    first_name,
    last_name,
    email,
    country,
    created_at
FROM {{ source('thelook','users') }}