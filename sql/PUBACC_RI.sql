CREATE TABLE PUBACC_RI
(
    Record_Type               TEXT                NOT NULL,
    unique_system_identifier  INTEGER             NOT NULL,
    ULS_File_Number           TEXT                NULL,
    EBF_Number                TEXT                NULL,
    Entity_Type               TEXT                NOT NULL,
    Year_Sequence_ID          INTEGER             NOT NULL,
    Gross_Revenues            REAL                NULL,
    Year_End_Date             TEXT                NOT NULL,
    Average_Gross_Revenues    REAL                NULL,
    Asset_Disclosure          REAL                NULL,
    Statement_Type            TEXT                NOT NULL,
    In_Existence              TEXT                NULL
);