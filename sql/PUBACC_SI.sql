create table PUBACC_SI
(
record_type               TEXT                 null,
unique_system_identifier  INTEGER              not null,
uls_file_number           TEXT                 null,
ebf_number                TEXT                 null,
call_sign                 TEXT                 null,
sid                       TEXT                 null,
action_performed          TEXT                 null
)