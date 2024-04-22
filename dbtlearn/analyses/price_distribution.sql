WITH list_with_host AS (
 SELECT * FROM {{ ref("dim_listings_with_hosts") }}
)

select max(price) from list_with_host