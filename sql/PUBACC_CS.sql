CREATE TABLE PUBACC_CS (
    record_type TEXT,
    unique_system_identifier INTEGER NOT NULL,
    uls_file_number TEXT,
    call_sign TEXT,
    location_number INTEGER,
    antenna_number INTEGER,
    frequency_assigned REAL,
    coser_result TEXT,
    coser_num TEXT,
    coser_activity_type TEXT,
    status_code TEXT,
    status_date TEXT
);