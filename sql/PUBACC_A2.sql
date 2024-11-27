create table PUBACC_A2
(
    Record_Type               TEXT              null,
    unique_system_identifier  INTEGER           not null,
    ULS_File_Number           TEXT              null,
    EBF_Number                TEXT              null,
    spectrum_manager_leasing  TEXT              null,
    defacto_transfer_leasing  TEXT              null,
    new_spectrum_leasing      TEXT              null,
    spectrum_subleasing       TEXT              null,
    xfer_control_lessee       TEXT              null,
    revision_spectrum_lease   TEXT              null,
    assignment_spectrum_lease TEXT              null,
    pfr_status                TEXT              null
)