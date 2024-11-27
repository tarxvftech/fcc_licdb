CREATE TABLE PUBACC_MW (
    record_type TEXT NOT NULL,
    unique_system_identifier INTEGER NOT NULL,
    uls_file_number TEXT,
    ebf_number TEXT,
    call_sign TEXT,
    pack_indicator TEXT,
    pack_registration_num INTEGER,
    pack_name TEXT,
    type_of_operation TEXT,
    smsa_code TEXT,
    station_class TEXT,
    cum_effect_is_major TEXT,
    status_code TEXT,
    status_date TEXT
);