create table PUBACC_CD
(
    Record_Type TEXT,
    Unique_System_Identifier INTEGER not null,
    ULS_File_Number TEXT,
    EBF_Number TEXT,
    Year_Sequence INTEGER not null,
    Gross_Revenues REAL,
    Year_End_Date TEXT,
    Aggregate_Gros_Rvn_DE REAL,
    Aggregate_Gros_Rvn_CB REAL,
    Total_Assets REAL,
    avg_gross_rvn_de_3 REAL,
    avg_gross_rvn_de_5 REAL
)