CREATE TABLE PUBACC_FR (
    record_type TEXT,
    unique_system_identifier INTEGER NOT NULL,
    uls_file_number TEXT,
    ebf_number TEXT,
    call_sign TEXT,
    frequency_action_performed TEXT,
    location_number INTEGER,
    antenna_number INTEGER,
    class_station_code TEXT,
    op_altitude_code TEXT,
    frequency_assigned REAL,
    frequency_upper_band REAL,
    frequency_carrier REAL,
    time_begin_operations INTEGER,
    time_end_operations INTEGER,
    power_output REAL,
    power_erp REAL,
    tolerance REAL,
    frequency_ind TEXT,
    status TEXT,
    eirp REAL,
    transmitter_make TEXT,
    transmitter_model TEXT,
    auto_transmitter_power_control TEXT,
    cnt_mobile_units INTEGER,
    cnt_mob_pagers INTEGER,
    freq_seq_id INTEGER,
    status_code TEXT,
    status_date TEXT,
    date_first_used TEXT
);