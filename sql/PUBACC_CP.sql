CREATE TABLE PUBACC_CP (
    record_type TEXT,
    unique_system_identifier INTEGER NOT NULL,
    uls_file_number TEXT,
    ebf_number TEXT,
    call_sign TEXT,
    control_point_action_performed TEXT,
    control_point_number INTEGER,
    control_address TEXT,
    control_city TEXT,
    state_code TEXT,
    control_phone TEXT,
    control_county TEXT,
    status_code TEXT,
    status_date TEXT
);