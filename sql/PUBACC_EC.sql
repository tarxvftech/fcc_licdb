CREATE TABLE pubacc_EC
(
    record_type TEXT NOT NULL,
    unique_system_identifier INTEGER NOT NULL,
    uls_file_number TEXT,
    callsign TEXT,
    ecip_flag TEXT,
    ecip_prong TEXT,
    holding_period_begin TEXT,
    holding_period_end TEXT
)