CREATE TABLE PUBACC_L6 (
    record_type CHAR(2) NULL,
    unique_system_identifier INTEGER NULL,
    callsign CHAR(10) NULL,
    uls_file_number CHAR(14) NULL,
    ebf_number TEXT NULL,
    lease_id CHAR(10) NULL,
    ls_site_link_id INTEGER NULL,
    location_number INTEGER NULL,
    loc_freeform_cond_type CHAR(1) NULL,
    unique_loc_freeform_id INTEGER NULL,
    sequence_number INTEGER NULL,
    loc_freeform_condition TEXT NULL,
    status_code CHAR(1) NULL,
    status_date TEXT NULL
);