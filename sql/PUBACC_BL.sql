create table PUBACC_BL
(
record_type               TEXT                 null,
unique_system_identifier  INTEGER              not null,
call_sign                 TEXT                 null,
location                  INTEGER              null,
buildout_code             INTEGER              null,
buildout_deadline         TEXT                 null,
buildout_date             TEXT                 null,
status_code               TEXT                 null,
status_date               TEXT                 null,
discontinuance_date       TEXT                 null
)