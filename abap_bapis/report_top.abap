*" TOP Include
REPORT z_bapi_report.

TABLES: mara.

TYPES: BEGIN OF ty_data,
         matnr TYPE mara-matnr,
         mtart TYPE mara-mtart,
         matkl TYPE mara-matkl,
       END OF ty_data.

DATA: gt_data TYPE STANDARD TABLE OF ty_data,
      gs_data TYPE ty_data.
