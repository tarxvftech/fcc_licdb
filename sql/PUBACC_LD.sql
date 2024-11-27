create table PUBACC_LD
(
record_type               TEXT                 null,
unique_system_identifier  INTEGER              not null,
uls_file_number           TEXT                 null,
ebf_number                TEXT                 null,
lease_id                  TEXT                 null,
issue_date                TEXT                 null,
expired_date              TEXT                 null,
cancellation_date         TEXT                 null,
lease_never_comm_ind      TEXT                 null
)