SET SERVEROUTPUT ON

CREATE OR REPLACE PROCEDURE test_deploy_proc
AS
    EXIT_ERROR            EXCEPTION;
    EXIT_NOERROR          EXCEPTION;
    eExit                 EXCEPTION;
    vGeneralException     EXCEPTION;
BEGIN
    -- Simulate long/hanging deployment
    DBMS_LOCK.SLEEP(600);  -- 10 minutes
END;
/

-- Execute it (this is what causes the hang)
EXEC test_deploy_proc;
