SET SERVEROUTPUT ON
WHENEVER SQLERROR EXIT SQL.SQLCODE

DECLARE
    EXIT_ERROR            EXCEPTION;
    EXIT_NOERROR          EXCEPTION;
    eExit                 EXCEPTION;
    vGeneralException     EXCEPTION;

    -- Declare Variables
    lErrMsg               VARCHAR2(2000);

BEGIN
 
    IF 1 = 1 THEN
        RAISE EXIT_ERROR;   -- simulate warning/error
    END IF;

EXCEPTION
    WHEN EXIT_ERROR THEN
        lErrMsg := 'Warning: Completed with error condition';
        DBMS_OUTPUT.PUT_LINE(lErrMsg);

        -- Force SQL*Plus to treat as error
        RAISE_APPLICATION_ERROR(-20001, lErrMsg);

    WHEN EXIT_NOERROR THEN
        lErrMsg := 'Completed successfully';
        DBMS_OUTPUT.PUT_LINE(lErrMsg);

    WHEN vGeneralException THEN
        lErrMsg := 'General exception occurred';
        DBMS_OUTPUT.PUT_LINE(lErrMsg);
        RAISE;

    WHEN OTHERS THEN
        lErrMsg := 'Unexpected error: ' || SQLERRM;
        DBMS_OUTPUT.PUT_LINE(lErrMsg);
        RAISE;
END;
/
