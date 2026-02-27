SET SERVEROUTPUT ON

CREATE OR REPLACE PROCEDURE test_deploy_proc
AS
    EXIT_ERROR            EXCEPTION;
    EXIT_NOERROR          EXCEPTION;
    eExit                 EXCEPTION;
    vGeneralException     EXCEPTION;

    lErrMsg VARCHAR2(2000);
BEGIN
    DBMS_OUTPUT.PUT_LINE('Start procedure');

    -- Intentional compilation error
    invalid_variable := 10;

EXCEPTION
    WHEN EXIT_ERROR THEN
        lErrMsg := 'Error encountered';
        DBMS_OUTPUT.PUT_LINE(lErrMsg);
END;
/
