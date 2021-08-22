--------------------------------------------------------
-- Archivo creado  - domingo-agosto-22-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure EXTRACT_DATA_FILES
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "INGEOM"."EXTRACT_DATA_FILES" 
(
  POLICYIDPARAM IN NUMBER ,
  POLICYNUMBER OUT VARCHAR2
  
  ) AS
  /* NOMBRE    : EXTRACT_DATA_FILES     */
  /* EJEMPLO   : EXTRACT_DATA_FILES(36) */
  /* OBJETIVO  : EXTRAER LA INFORMACION DE LOS CAMPOS) */
  /* PARAMETROS:                          */
  /*    IN     : POLICYID NUMBER = ID DE LA POLIZA A BUSACAR*/
  /* BITACORA DE CREACION : AGOSTO 22-08-2021 */
  /* BITACORA DE MODIFICACION */
  /* VERSION          DIA         HORA    TIPO                      AUTOR               DESCRIPCION */
  /*                 dd/mm/yyyy  HH24:MI  Creacion/modificacion     Nombre Apellido     Descripcion general */
  /* 001            22/08/2021   18:23    creacion                  Diego Acosta        creacion*/
  
  --*************************************
  -- VARIABLES
  --*************************************
  V_POLICYID NUMBER;
  V_POLICYNUMBER VARCHAR2(250);
    
BEGIN
  --************************
  -- 1. ADECUAR PROCESO
  --*************************
  
  --**************************
  -- 2. OBETNER VARIABLES
  --********************
  SELECT POLICYNUMBER INTO V_POLICYNUMBER FROM POL_POLICY WHERE POLICYID = POLICYIDPARAM;
  POLICYNUMBER := V_POLICYNUMBER;

  
END EXTRACT_DATA_FILES;

/
