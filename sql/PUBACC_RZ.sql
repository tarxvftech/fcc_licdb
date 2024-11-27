CREATE TABLE PUBACC_RZ
(
    record_type               TEXT,
    unique_system_identifier  INTEGER NOT NULL,
    uls_file_number           TEXT,
    ebf_number                TEXT,
    call_sign                 TEXT,
    antenna_action_performed  TEXT,
    location_number           INTEGER,
    antenna_number            INTEGER,
    receive_zone_number       INTEGER,
    receive_zone              TEXT
);