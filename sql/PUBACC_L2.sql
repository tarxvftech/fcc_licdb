CREATE TABLE PUBACC_L2 (
    record_type               TEXT              NOT NULL,
    unique_system_identifier  INTEGER           NOT NULL,
    uls_file_number           TEXT              NULL,
    ebf_number                TEXT              NULL,
    call_sign                 TEXT              NULL,
    location_action_performed TEXT              NULL,
    location_number           INTEGER           NULL,
    registration_required     TEXT              NULL,
    protection_date           TEXT              NULL,
    link_reg_num              TEXT              NULL,
    link_reg_action_performed TEXT              NULL,
    mexico_clearance_indicator TEXT             NULL,
    quiet_zone_consent        TEXT              NULL,
    status_code               TEXT              NULL,
    status_date               TEXT              NULL
)