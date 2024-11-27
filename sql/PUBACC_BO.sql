CREATE TABLE PUBACC_BO (
    record_type TEXT,
    unique_system_identifier INTEGER NOT NULL,
    call_sign TEXT,
    buildout_code INTEGER,
    buildout_deadline TEXT,
    buildout_date TEXT,
    status_code TEXT,
    status_date TEXT,
    discontinuance_date TEXT
);