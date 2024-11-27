CREATE TABLE PUBACC_FT
(
    record_type               TEXT,
    unique_system_identifier  INTEGER NOT NULL,
    uls_file_number           TEXT,
    ebf_number                TEXT,
    call_sign                 TEXT,
    freq_type_action_performed TEXT,
    location_number           INTEGER,
    antenna_number            INTEGER,
    frequency_assigned        REAL,
    frequency_type_number     INTEGER,
    frequency_type_code       TEXT
)