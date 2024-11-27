CREATE TABLE PUBACC_F4
(
    record_type               TEXT              NULL,
    unique_system_identifier  INTEGER           NOT NULL,
    uls_file_number           TEXT              NULL,
    ebf_number                TEXT              NULL,
    call_sign                 TEXT              NULL,
    lease_id                  TEXT              NULL,
    ls_site_link_id           INTEGER           NULL,
    action_performed          TEXT              NULL,
    location_number           INTEGER           NULL,
    antenna_number            INTEGER           NULL,
    frequency_number          INTEGER           NULL,
    frequency_assigned        REAL              NULL,
    frequency_upper_band      REAL              NULL,
    frequency_offset          TEXT              NULL,
    frequency_channel_block   TEXT              NULL,
    equipment_class           TEXT              NULL,
    minimum_power_output      REAL              NULL,
    date_first_use            TEXT              NULL,
    status_code               TEXT              NULL,
    status_date               TEXT              NULL
)