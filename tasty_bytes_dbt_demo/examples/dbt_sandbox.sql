SHOW TABLES IN DATABASE tasty_bytes_dbt_db;
SHOW VIEWS IN DATABASE tasty_bytes_dbt_db;

SELECT * FROM snowflake.telemetry.events
WHERE record_type = 'LOG'
ORDER BY TIMESTAMP DESC
LIMIT 10;

SHOW PARAMETERS LIKE 'EVENT_TABLE' IN ACCOUNT;

SHOW DBT PROJECTS LIKE 'tasty%';

ALTER TASK IF EXISTS tasty_bytes_dbt_db.dev.run_prepped_data_dbt SUSPEND;
