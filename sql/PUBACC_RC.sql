CREATE TABLE PUBACC_RC
(
    record_type               TEXT,
    unique_system_identifier  INTEGER NOT NULL,
    uls_file_number           TEXT,
    ebf_number                TEXT,
    call_sign                 TEXT,
    radial_action_performed   TEXT,
    location_number           INTEGER,
    antenna_number            INTEGER,
    receiver_make             TEXT,
    receiver_model            TEXT,
    receiver_stability        REAL,
    receiver_noise_figure     REAL,
    status_code               TEXT,
    status_date               TEXT
);