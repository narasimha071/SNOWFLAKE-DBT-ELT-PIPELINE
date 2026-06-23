select *
from {{ source('SNOWFLAKE_SCHEMA', 'Bookings') }}

