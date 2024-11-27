create table PUBACC_EM
(
record_type               TEXT                 null,
unique_system_identifier  INTEGER              not null,
uls_file_number           TEXT                 null,
ebf_number                TEXT                 null,
call_sign                 TEXT                 null,
location_number           INTEGER              null,
antenna_number            INTEGER              null,
frequency_assigned        REAL                 null,
emission_action_performed TEXT                 null,
emission_code             TEXT                 null,
digital_mod_rate          REAL                 null,
digital_mod_type          TEXT                 null,
frequency_number          INTEGER              null,
status_code               TEXT                 null,
status_date               TEXT                 null,
emission_sequence_id      INTEGER              null
)