CREATE TABLE PUBACC_SG
(
    record_type TEXT,
    unique_system_identifier INTEGER NOT NULL,
    uls_file_number TEXT,
    ebf_number TEXT,
    call_sign TEXT,
    segment_action_performed TEXT,
    path_number INTEGER,
    transmit_location INTEGER,
    transmit_antenna INTEGER,
    receiver_location INTEGER,
    receiver_antenna INTEGER,
    segment_number INTEGER,
    segment_length REAL,
    status_code TEXT,
    status_date TEXT
);