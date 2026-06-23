select *
from {{ source('SNOWFLAKE_SCHEMA', 'Listings') }}



