CREATE TABLE PUBACC_BC (
    record_type TEXT NOT NULL,
    unique_system_identifier INTEGER NOT NULL,
    uls_file_number TEXT,
    ebf_number TEXT,
    callsign TEXT,
    broadcast_callsign TEXT,
    broadcast_city TEXT,
    broadcast_state TEXT,
    parent_facility_id INTEGER,
    parent_class_code TEXT,
    nonparent_type_code TEXT
);