CREATE TABLE PUBACC_MC (
    record_type                TEXT,
    unique_system_identifier   INTEGER NOT NULL,
    uls_file_number            TEXT,
    ebf_number                 TEXT,
    call_sign                  TEXT,
    partition_area_id          INTEGER,
    coordinate_seq_id          INTEGER,
    partition_lat_degrees      INTEGER,
    partition_lat_minutes      INTEGER,
    partition_lat_seconds      REAL,
    partition_lat_direction    TEXT,
    partition_long_degrees     INTEGER,
    partition_long_minutes     INTEGER,
    partition_long_seconds     REAL,
    partition_long_direction   TEXT,
    undefined_partitioned_area INTEGER
);