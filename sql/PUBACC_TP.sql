CREATE TABLE PUBACC_TP (
    record_type TEXT,
    unique_system_identifier INTEGER NOT NULL,
    uls_file_number TEXT,
    ebf_number TEXT,
    call_sign TEXT,
    location_number INTEGER,
    antenna_number INTEGER,
    frequency_number INTEGER,
    freq_proto_seq_id INTEGER,
    freq_proto_code_desc TEXT NOT NULL,
    a_freq_proto_other TEXT,
    action_performed TEXT,
    status_code TEXT,
    status_date TEXT
);