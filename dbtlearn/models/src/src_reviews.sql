with raw_reviews as (
    select * from 
    {{ source('airbnb', 'reviews') }}
)
SELECT
  LISTING_ID
  , DATE as REVIEW_DATE
  , REVIEWER_NAME
  , COMMENTS AS REVIEW_TEXT
  , SENTIMENT AS REVIEW_SENTIMENT
FROM
 raw_reviews