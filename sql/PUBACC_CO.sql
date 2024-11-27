CREATE TABLE PUBACC_CO (
    record_type TEXT NOT NULL,
    unique_system_identifier INTEGER NOT NULL,
    uls_file_num TEXT,
    callsign TEXT,
    comment_date TEXT,
    description TEXT,
    status_code TEXT,
    status_date TEXT
);