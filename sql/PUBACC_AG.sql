CREATE TABLE PUBACC_AG (
    record_type TEXT,
    unique_system_identifier INTEGER NOT NULL,
    uls_file_number TEXT,
    ebf_number TEXT,
    action_requested TEXT,
    agreement_type TEXT,
    agreement_name TEXT,
    des_ent_or_closed_bid_impact TEXT,
    reserved_for_future TEXT,
    mod_to_rev TEXT
);