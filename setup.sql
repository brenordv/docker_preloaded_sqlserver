--Create sample database.
CREATE DATABASE db_log
GO

USE [db_log]
GO
-- Switch to that new database

-- Creates a sample log table.
CREATE TABLE tbl_log (
	id int IDENTITY(1,1) PRIMARY KEY,
	[timestamp] datetime NOT NULL DEFAULT(getdate()),
	log_text varchar(4000) NOT NULL
	
)
GO

--Inserts a log to tell everyone you're born! :)
insert into tbl_log (log_text) VALUES('Hello World! I was just born!')
GO