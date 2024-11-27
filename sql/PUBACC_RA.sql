create table PUBACC_RA
(
record_type               TEXT                 null,
unique_system_identifier  INTEGER              not null,
uls_file_number           TEXT                 null,
ebf_number                TEXT                 null,
call_sign                 TEXT                 null,
radial_action_performed   TEXT                 null,
location_number           INTEGER              null,
antenna_number            INTEGER              null,
frequency_number          INTEGER              null,
frequency_assigned        REAL                 null,
frequency_upper_band      REAL                 null,
radial_direction          INTEGER              null,
radial_haat               REAL                 null,
radial_erp                REAL                 null,
dist_to_sab               REAL                 null,
dist_to_cgsa              REAL                 null,
status_code               TEXT                 null,
status_date               TEXT                 null
)