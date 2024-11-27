CREATE TABLE PUBACC_CF (
    Record_Type TEXT,
    unique_system_identifier INTEGER NOT NULL,
    ULS_File_Number TEXT,
    EBF_Number TEXT,
    Item_Type_Indicator TEXT,
    Item_Type TEXT,
    Constructed TEXT,
    Location_Number INTEGER,
    Path_Number INTEGER,
    Frequency_Assigned REAL,
    Frequency_Upper_Band REAL,
    number_of_mobiles INTEGER,
    action_performed TEXT,
    actual_date_of_construction TEXT,
    frequency_number INTEGER,
    Assign_Callsign TEXT
);