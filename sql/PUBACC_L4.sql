create table PUBACC_L4
(
  record_type               TEXT not null,
  unique_system_identifier  INTEGER not null,
  uls_file_number           TEXT,
  ebf_number                TEXT,
  call_sign                 TEXT,
  lease_id                  TEXT,
  ls_site_link_id           INTEGER,
  location_action_performed TEXT,
  location_number           INTEGER,
  registration_required     TEXT,
  protection_date           TEXT,
  link_reg_num              TEXT,
  link_reg_action_performed TEXT,
  mexico_clearance_indicator TEXT,
  quiet_zone_consent        TEXT,
  status_code               TEXT,
  status_date               TEXT
)