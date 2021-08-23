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
  POLICYNUMBER OUT VARCHAR2,
  PARTNER OUT VARCHAR2,
  POLICYID OUT VARCHAR2
  
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
  V_PARTNER VARCHAR2(50);  
  V_DATE VARCHAR2(50); 
  V_DATECUTOFF TIMESTAMP;
  V_SDATECUTOFF VARCHAR2(50);
  V_aux TIMESTAMP;
  
BEGIN
  --************************
  -- 1. ADECUAR PROCESO
  --*************************
  
  --**************************
  -- 2. OBETNER VARIABLES
  -- FUNCTION DECODE(A,B, VALOR SI A=B, VALOR SI a != b )  
  --********************
  SELECT DECODE(POLICYID,36,999,-1000), POLICYNUMBER, POLICYPARTNER, DATECUTOFF INTO V_POLICYID, V_POLICYNUMBER 
  ,V_PARTNER, V_SDATECUTOFF
  FROM POL_POLICY WHERE POLICYID = POLICYIDPARAM;
  
  POLICYNUMBER := V_POLICYNUMBER;
  PARTNER := V_PARTNER;
  POLICYID := V_POLICYID;
  --V_SDATECUTOFF := '2021-08-20';
  V_AUX := TO_DATE('2022-08','YYYY/MM');
 
  -- ASIGNAR VARIABLE DATE
  -- V_DATE := TO_DATE('2021/08/21','YYYY/M/DD');
  -- DBMS OUTPUT.PUT_LINE FOR MOSTRAR VARIABLES
  DBMS_OUTPUT.PUT_LINE('PRINT V_POLICY NUMBER 1: ' || V_POLICYNUMBER );
  DBMS_OUTPUT.PUT_LINE('PRINT V_PARTNER 1:' || V_PARTNER);
  --DBMS_OUTPUT.PUT_LINE('FECHA V_DATE : ' || V_DATE);
 DBMS_OUTPUT.PUT_LINE('PRINT V_CUTOFF : '|| V_AUX);
 -- CONDICION 
 -- MI IF
  
  IF NVL(V_PARTNER,1)>1 THEN
  DBMS_OUTPUT.PUT_LINE(' PARTNER NO ES NULL');
  END IF;
 
 
  
END EXTRACT_DATA_FILES;

/
