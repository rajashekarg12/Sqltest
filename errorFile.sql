SET SERVEROUTPUT ON

DECLARE
    lErrMsg VARCHAR2(2000);
BEGIN
    -- Simulate warning condition
    lErrMsg := 'Warning: Completed with error condition';

    DBMS_OUTPUT.PUT_LINE(lErrMsg);

    -- Raise custom error (negative number between -20000 and -20999)
    RAISE_APPLICATION_ERROR(-20001, lErrMsg);
END;
/
