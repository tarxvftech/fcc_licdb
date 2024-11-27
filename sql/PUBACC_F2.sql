create table PUBACC_F2
(
record_type               TEXT,
unique_system_identifier  INTEGER not null,
uls_file_number           TEXT,
ebf_number                TEXT,
call_sign                 TEXT,
action_performed          TEXT,
location_number           INTEGER,
antenna_number            INTEGER,
frequency_number          INTEGER,
frequency_assigned        REAL,
frequency_upper_band      REAL,
offset                    TEXT,
frequency_channel_block   TEXT,
equipment_class           TEXT,
minimum_power_output      REAL,
status_code               TEXT,
status_date               TEXT,
trans_meth                TEXT
)