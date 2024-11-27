CREATE TABLE PUBACC_ME (
    record_type               TEXT              NOT NULL,
    unique_system_identifier  INTEGER           NOT NULL,
    uls_file_number           TEXT              NULL,
    ebf_number                TEXT              NULL,
    callsign                  TEXT              NULL,
    mea_number                TEXT              NULL,
    action_performed          TEXT              NULL
);