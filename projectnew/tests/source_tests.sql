{{ config(
    severity='warn') }}

SELECT 
    1
FROM 
    {{ source('SNOWFLAKE_SCHEMA','Bookings') }}
WHERE 
    BOOKING_AMOUNT < 200    