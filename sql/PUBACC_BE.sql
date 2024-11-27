CREATE TABLE PUBACC_BE (
    record_type TEXT NOT NULL,
    unique_system_identifier INTEGER NOT NULL,
    uls_file_number TEXT,
    ebf_number TEXT,
    callsign TEXT,
    multichannel TEXT,
    cable_tv TEXT,
    programming_requirements TEXT,
    interference_protection TEXT
);