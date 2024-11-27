CREATE TABLE PUBACC_LM
(
    record_type               TEXT                NOT NULL,
    unique_system_identifier  INTEGER             NULL,
    uls_file_number           TEXT                NULL,
    ebf_number                TEXT                NULL,
    callsign                  TEXT                NULL,
    ext_implement_appr        TEXT                NULL,
    lm_eligibility_activity   TEXT                NULL,
    status_code               TEXT                NULL,
    status_date               TEXT                NULL
)