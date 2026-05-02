# DBT Project 2 — Ecommerce Analytics Pipeline

## Overview
A dbt project built on BigQuery using the thelook_ecommerce public dataset.

## Architecture
RAW → STAGING → INTERMEDIATE → MARTS

## Models
### Staging (Views)
- stg_orders — cleaned orders
- stg_users — cleaned users
- stg_order_items — cleaned order items
- stg_products — cleaned products

### Intermediate (Views)
- int_order_items_enriched — joins orders, items and products

### Marts (Tables)
- fct_orders — fact table, one row per order item
- dim_users — dimension table, one row per user

## Tests
- 34 tests total
- unique, not_null, relationships, singular tests

## Tech Stack
- dbt Cloud
- BigQuery
- GitHub
