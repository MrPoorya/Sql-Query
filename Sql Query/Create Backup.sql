USE Tala;
GO
BACKUP DATABASE Tala
TO DISK = 'F:\DatabaseBackup\Backup.bak'
WITH FORMAT,
MEDIANAME = 'C_SQLServerBackups',
NAME = 'Full Backup of Tala'
GO