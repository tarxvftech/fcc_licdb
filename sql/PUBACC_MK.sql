create table PUBACC_MK
(
record_type               TEXT                 null,
unique_system_identifier  INTEGER              not null,
uls_file_number           TEXT                 null,
ebf_number                TEXT                 null,
call_sign                 TEXT                 null,
market_code               TEXT                 null,
channel_block             TEXT                 null,
submarket_code            INTEGER              null,
market_name               TEXT                 null,
coverage_partitioning     TEXT                 null,
coverage_dissagregation   TEXT                 null,
cellular_phase_id         INTEGER              null,
population                INTEGER              null,
tribal_credit_indicator   TEXT                 null,
tribal_credit_calculation REAL                 null,
additional_credit_requested REAL               null,
tribal_credit_awarded     REAL                 null,
additiona_credit_awarded  REAL                 null,
bc_pct                    REAL                 null,
open_closed_bidding       TEXT                 null,
bidding_credit_type       TEXT                 null,
claiming_unserved_area    TEXT                 null,
incumbent_relocation      TEXT                 null
)