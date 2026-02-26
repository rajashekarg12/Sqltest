SET SERVEROUTPUT ON

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

END;
/
