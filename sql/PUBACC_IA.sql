create table PUBACC_IA
(
record_type               TEXT                not null,
unique_system_identifier  INTEGER             not null,
uls_file_number           TEXT                null,
ebf_number                TEXT                null,
call_sign                 TEXT                null,
international_address_1   TEXT                null,
international_address_2   TEXT                null,
international_city        TEXT                null,
country                   TEXT                null,
international_zip_code    TEXT                null,
international_phone       TEXT                null,
international_fax         TEXT                null
)