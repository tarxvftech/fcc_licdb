CREATE TABLE PUBACC_BF (
    record_type TEXT,
    unique_system_identifier INTEGER NOT NULL,
    call_sign TEXT,
    location_number INTEGER,
    antenna_number INTEGER,
    frequency_assigned REAL,
    buildout_code INTEGER,
    buildout_deadline TEXT,
    buildout_date TEXT,
    status_code TEXT,
    status_date TEXT,
    frequency_number INTEGER,
    discontinuance_date TEXT
);