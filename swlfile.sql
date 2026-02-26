-- Sample SQL File

-- Declare Exceptions
DECLARE
    EXIT_ERROR            EXCEPTION;
    EXIT_NOERROR          EXCEPTION;
    eExit                 EXCEPTION;
    vGeneralException     EXCEPTION;

    -- Declare Variables
    lErrMsg               VARCHAR2(2000);

BEGIN
    -- Sample logic (dummy, no exit functionality)
    BEGIN
        -- Logic can be added here if needed
        NULL; -- Just a placeholder, no exit implemented

    EXCEPTION
        WHEN EXIT_ERROR THEN
            -- Handle error condition
            lErrMsg := 'Error encountered!';
            DBMS_OUTPUT.PUT_LINE(lErrMsg);
        WHEN EXIT_NOERROR THEN
            -- Handle no-error condition
            lErrMsg := 'No error, everything fine!';
            DBMS_OUTPUT.PUT_LINE(lErrMsg);
        WHEN eExit THEN
            -- This exception is for exit, not utilized here
            NULL; -- Just for demo
        WHEN vGeneralException THEN
            -- Handle general exception
            lErrMsg := 'A general exception occurred.';
            DBMS_OUTPUT.PUT_LINE(lErrMsg);
        WHEN OTHERS THEN
            -- Handle any unexpected errors
            lErrMsg := 'An unexpected error occurred.';
            DBMS_OUTPUT.PUT_LINE(lErrMsg);
    END;

END;
/
