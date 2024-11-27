create table PUBACC_L5
(
record_type               TEXT                 null,
unique_system_identifier  INTEGER              not null,
call_sign                 TEXT                 null,
uls_file_number           TEXT                 null,
ebf_number                TEXT                 null,
lease_id                  TEXT                 null,
ls_site_link_id           INTEGER              null,
location_number           INTEGER              null,
special_condition_type    TEXT                 null,
special_condition_code    INTEGER              null,
status_code               TEXT                 null,
status_date               TEXT                 null
)