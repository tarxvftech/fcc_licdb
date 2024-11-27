CREATE TABLE PUBACC_UA
(
    record_type               TEXT    NOT NULL,
    unique_system_identifier  INTEGER NULL,
    uls_file_number           TEXT    NULL,
    ebf_number                TEXT    NULL,
    call_sign                 TEXT    NULL,
    action_performed          TEXT    NULL,
    cellular_phase            INTEGER NULL,
    market_code               TEXT    NULL,
    submarket_code            INTEGER NULL,
    channel_block             TEXT    NULL,
    claiming_unserved_area    TEXT    NULL
)