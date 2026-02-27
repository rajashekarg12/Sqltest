SET SERVEROUTPUT ON

CREATE OR REPLACE PROCEDURE test_deploy_proc AS
    EXIT_ERROR        EXCEPTION;
    EXIT_NOERROR      EXCEPTION;
    eExit             EXCEPTION;
    vGeneralException EXCEPTION;
BEGIN
    NULL;
END;
/

-- This will cause SQL*Plus to wait for input
SELECT * FROM dual WHERE dummy='&ENTER_VALUE';
