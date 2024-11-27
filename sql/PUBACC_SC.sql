CREATE TABLE PUBACC_SC (
    record_type TEXT,
    unique_system_identifier INTEGER NOT NULL,
    uls_file_number TEXT,
    ebf_number TEXT,
    callsign TEXT,
    special_condition_type TEXT,
    special_condition_code INTEGER,
    status_code TEXT,
    status_date TEXT
);