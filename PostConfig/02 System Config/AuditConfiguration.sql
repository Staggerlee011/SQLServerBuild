/*

    Audit Failed Logins only

        Ensure only failed logins are recorded in the errorlog

*/
-- change Audit Level to 2
USE [master]
GO
EXEC xp_instance_regwrite N'HKEY_LOCAL_MACHINE', N'Software\Microsoft\MSSQLServer\MSSQLServer', N'AuditLevel', REG_DWORD, 2
GO
