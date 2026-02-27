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

SELECT * FROM dual WHERE dummy='&VAL';
