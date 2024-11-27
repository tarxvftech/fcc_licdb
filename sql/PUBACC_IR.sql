CREATE TABLE PUBACC_IR (
    record_type TEXT,
    unique_system_identifier INTEGER NOT NULL,
    uls_file_number TEXT,
    call_sign TEXT,
    location_number INTEGER,
    antenna_number INTEGER,
    frequency_assigned REAL,
    irac_result TEXT,
    fas_docket_num TEXT,
    fccm_num TEXT,
    faa_ng_num TEXT,
    status_code TEXT,
    status_date TEXT,
    a_irac_status_code INTEGER
);