create table PUBACC_MP
(
record_type            		TEXT        null,
unique_system_identifier 		INTEGER     not null,
uls_file_number          		TEXT        null,
ebf_number               		TEXT        null,
call_sign                 	TEXT        null,
market_partition_code   		TEXT        null,
defined_partition_area    	TEXT        null,
defined_area_population  		INTEGER     null,
include_exclude_ind       	TEXT        null,
partition_area_id				INTEGER     null,
action_performed				TEXT        null,
census_figures              	INTEGER     null,
def_undef_ind					TEXT        null,
partition_sequence_number 	INTEGER     null,
whitespace_ind 	        	TEXT        null
)