create table PUBACC_ST
(
    record_type               TEXT,
    unique_system_identifier  INTEGER         not null,
    uls_file_number           TEXT,
    ebf_number                TEXT,
    call_sign                 TEXT,
    sector_action_performed   TEXT,
    sector_number             INTEGER,
    psd_nonpsd_methodology    TEXT,
    maximum_erp               REAL,
    psd_attachment            TEXT,
    location_number           INTEGER,
    location_name             TEXT,
    status_code               TEXT,
    status_date               TEXT
)