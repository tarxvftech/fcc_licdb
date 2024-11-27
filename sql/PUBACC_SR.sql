CREATE TABLE PUBACC_SR
(
    record_type TEXT,
    unique_system_identifier INTEGER NOT NULL,
    uls_file_number TEXT,
    ebf_number TEXT,
    call_sign TEXT,
    epirb_identification_code TEXT,
    INMARSAT_A TEXT,
    INMARSAT_B TEXT,
    INMARSAT_C TEXT,
    INMARSAT_M TEXT,
    INMARSAT_Mini TEXT,
    VHF TEXT,
    MF TEXT,
    HF TEXT,
    DSC TEXT,
    epirb_406_mhz TEXT,
    epirb_121_5_mhz TEXT,
    sart TEXT,
    raft_count INTEGER,
    lifeboat_count INTEGER,
    vessel_capacity INTEGER
)