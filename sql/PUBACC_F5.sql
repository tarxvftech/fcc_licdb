CREATE TABLE PUBACC_F5
(
    record_type TEXT,
    unique_system_identifier INTEGER NOT NULL,
    call_sign TEXT,
    lease_id TEXT,
    ls_site_link_id INTEGER,
    location_number INTEGER,
    antenna_number INTEGER,
    frequency REAL,
    frequency_number INTEGER,
    special_condition_type TEXT,
    special_condition_code INTEGER,
    status_code TEXT,
    status_date TEXT
);