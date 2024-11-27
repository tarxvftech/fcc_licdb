CREATE TABLE PUBACC_LS (
    record_type TEXT,
    unique_system_identifier INTEGER NOT NULL,
    call_sign TEXT,
    location_number INTEGER,
    special_condition_type TEXT,
    special_condition_code INTEGER,
    status_code TEXT,
    status_date TEXT
);