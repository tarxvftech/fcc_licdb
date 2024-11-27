create table PUBACC_FS
(
record_type               TEXT                 null,
unique_system_identifier  INTEGER              not null,
call_sign                 TEXT                 null,
location_number           INTEGER              null,
antenna_number            INTEGER              null,
frequency                 REAL                 null,
frequency_number          INTEGER              null,
special_condition_type    TEXT                 null,
special_condition_code    INTEGER              null,
status_code               TEXT                 null,
status_date               TEXT                 null
)