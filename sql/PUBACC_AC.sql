create table PUBACC_AC
(
record_type               TEXT                null,
unique_system_identifier  INTEGER             not null,
uls_file_number           TEXT                null,
ebf_number                TEXT                null,
call_sign                 TEXT                null,
aircraft_count            INTEGER             null,
type_of_carrier           TEXT                null,
portable_indicator        TEXT                null,
fleet_indicator           TEXT                null,
n_number                  TEXT                null
)