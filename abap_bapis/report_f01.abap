*" F01 Include
FORM get_data.
  DATA: ls_mara TYPE mara.

  CALL FUNCTION 'BAPI_MATERIAL_GET_DETAIL'
    EXPORTING
      material = p_matnr
    IMPORTING
      material_general_data = ls_mara
    EXCEPTIONS
      OTHERS = 1.

  IF sy-subrc = 0.
    gs_data-matnr = ls_mara-matnr.
    gs_data-mtart = ls_mara-mtart.
    gs_data-matkl = ls_mara-matkl.
    APPEND gs_data TO gt_data.
  ENDIF.
ENDFORM.

FORM display_data.
  LOOP AT gt_data INTO gs_data.
    WRITE: / 'Material:', gs_data-matnr,
           'Tipo:', gs_data-mtart,
           'Grupo:', gs_data-matkl.
  ENDLOOP.
ENDFORM.
