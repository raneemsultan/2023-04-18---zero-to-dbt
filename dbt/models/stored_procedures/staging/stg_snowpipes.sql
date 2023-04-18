SELECT
    PIPE_ID,
    PIPE_NAME,
    PIPE_SCHEMA_ID,
    PIPE_SCHEMA,
    PIPE_CATALOG_ID,
    PIPE_CATALOG,
    IS_AUTOINGEST_ENABLED,
    NOTIFICATION_CHANNEL_NAME,
    PIPE_OWNER,
    DEFINITION,
    CREATED,
    LAST_ALTERED,
    COMMENT,
    DELETED,
    CURRENT_TIMESTAMP AS INGESTION_TIME

FROM {{ source('snowflake_account_usage', 'pipes') }}
