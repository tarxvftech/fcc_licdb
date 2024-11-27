CREATE TABLE PUBACC_O2 (
    record_type TEXT NOT NULL,
    unique_system_identifier INTEGER NOT NULL,
    uls_file_number TEXT,
    ebf_number TEXT,
    callsign TEXT,
    lease_id TEXT,
    ls_site_link_id INTEGER,
    location_number INTEGER,
    area_text_sequence_num INTEGER,
    area_of_operation TEXT,
    status_code TEXT,
    status_date TEXT
);