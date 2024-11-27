CREATE TABLE PUBACC_MH (
    record_type TEXT NOT NULL,
    unique_system_identifier INTEGER NOT NULL,
    uls_file_number TEXT,
    ebf_number TEXT,
    callsign TEXT,
    action_performed TEXT,
    channel_plan_number TEXT,
    channel_plan TEXT
);