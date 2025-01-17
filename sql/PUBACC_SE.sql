CREATE TABLE PUBACC_SE (
    record_type TEXT,
    unique_system_identifier INTEGER,
    uls_file_number TEXT,
    ebf_number TEXT,
    call_sign TEXT,
    ship_call_sign TEXT,
    port_registry TEXT,
    owner TEXT,
    operater TEXT,
    charter TEXT,
    agent TEXT,
    radiotelephone_exempt_req TEXT,
    gmdss_exemp_req TEXT,
    radio_dir_exempt_req TEXT,
    prev_exempt_file_number TEXT,
    foreign_port TEXT,
    vessel_size_exempt TEXT,
    equipment_exempt TEXT,
    ltd_routes_exempt TEXT,
    cond_voyages_exempt TEXT,
    other_exempt TEXT,
    other_exempt_desc TEXT,
    ship_type TEXT,
    number_of_crew INTEGER,
    number_passengers INTEGER,
    number_others INTEGER,
    count_vhf INTEGER,
    count_vhf_dsc TEXT,
    count_epirb INTEGER,
    count_survival INTEGER,
    count_earth_station INTEGER,
    count_auto_alarm INTEGER,
    count_single_side_band INTEGER,
    single_side_band_type_mf TEXT,
    single_side_band_type_hf TEXT,
    single_side_band_type_dsc TEXT,
    count_of_navtex INTEGER,
    count_of_9_ghz_radar INTEGER,
    count_of_500_khz_distress INTEGER,
    count_of_reserve_power INTEGER,
    count_of_other INTEGER,
    description_of_other TEXT
)