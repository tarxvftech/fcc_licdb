create table PUBACC_AT
(
Record_Type               TEXT                 null,
unique_system_identifier  INTEGER              not null,
ULS_File_Number           TEXT                 null,
EBF_Number                TEXT                 null,
Attachment_Code           TEXT                 null,
Attachment_Description    TEXT                 null,
Attachment_Date           TEXT                 null,
attachment_file_name      TEXT                 null,
attachment_action_performed TEXT               null
)