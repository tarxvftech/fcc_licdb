CREATE TABLE PUBACC_L3 (
    record_type TEXT NOT NULL,
    unique_system_identifier INTEGER NOT NULL,
    uls_file_number TEXT NULL,
    ebf_number TEXT NULL,
    call_sign TEXT NULL,
    lease_id TEXT NULL,
    ls_site_link_id INTEGER NULL,
    location_action_performed TEXT NULL,
    location_type_code TEXT NULL,
    location_class_code TEXT NULL,
    location_number INTEGER NULL,
    site_status TEXT NULL,
    corresponding_fixed_location INTEGER NULL,
    location_address TEXT NULL,
    location_city TEXT NULL,
    location_county TEXT NULL,
    location_state TEXT NULL,
    radius_of_operation REAL NULL,
    area_of_operation_code TEXT NULL,
    clearance_indicator TEXT NULL,
    ground_elevation REAL NULL,
    lat_degrees INTEGER NULL,
    lat_minutes INTEGER NULL,
    lat_seconds REAL NULL,
    lat_direction TEXT NULL,
    long_degrees INTEGER NULL,
    long_minutes INTEGER NULL,
    long_seconds REAL NULL,
    long_direction TEXT NULL,
    max_lat_degrees INTEGER NULL,
    max_lat_minutes INTEGER NULL,
    max_lat_seconds REAL NULL,
    max_lat_direction TEXT NULL,
    max_long_degrees INTEGER NULL,
    max_long_minutes INTEGER NULL,
    max_long_seconds REAL NULL,
    max_long_direction TEXT NULL,
    nepa TEXT NULL,
    quiet_zone_notification_date TEXT NULL,
    tower_registration_number TEXT NULL,
    height_of_support_structure REAL NULL,
    overall_height_of_structure REAL NULL,
    structure_type TEXT NULL,
    airport_id TEXT NULL,
    location_name TEXT NULL,
    units_hand_held INTEGER NULL,
    units_mobile INTEGER NULL,
    units_temp_fixed INTEGER NULL,
    units_aircraft INTEGER NULL,
    units_itinerant INTEGER NULL,
    status_code TEXT NULL,
    status_date TEXT NULL
);