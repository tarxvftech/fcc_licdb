CREATE TABLE PUBACC_PC
(
record_type               TEXT                NULL,
unique_system_identifier  INTEGER             NOT NULL,
uls_file_number           TEXT                NULL,
ebf_number                TEXT                NULL,
call_sign                 TEXT                NULL,
action_performed          TEXT                NULL,
location_number           INTEGER             NULL,
antenna_number            INTEGER             NULL,
frequency                 REAL                NULL,
subscriber_call_sign      TEXT                NULL,
city                      TEXT                NULL,
state                     TEXT                NULL,
lat_degrees               INTEGER             NULL,
lat_minutes               INTEGER             NULL,
lat_seconds               REAL                NULL,
lat_direction             TEXT                NULL,
long_degrees              INTEGER             NULL,
long_minutes              INTEGER             NULL,
long_seconds              REAL                NULL,
long_direction            TEXT                NULL,
point_of_com_frequency    REAL                NULL,
status_code               TEXT                NULL,
status_date               TEXT                NULL
)