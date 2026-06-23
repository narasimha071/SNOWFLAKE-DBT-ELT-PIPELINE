select * from {{ source('SNOWFLAKE_SCHEMA', 'Hosts') }}

