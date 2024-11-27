create table PUBACC_MF
(
record_type               TEXT          null,
unique_system_identifier  INTEGER       not null,
uls_file_number           TEXT          null,
ebf_number                TEXT          null,
call_sign                 TEXT          null,
partition_area_id         INTEGER       null,
lower_frequency           REAL          null,
upper_frequency           REAL          null,
def_und_ind               TEXT          null,
defined_partition_area    TEXT          null
)