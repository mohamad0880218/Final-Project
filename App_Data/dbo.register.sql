CREATE TABLE [dbo].[register]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [username] NVARCHAR(50) NOT NULL, 
    [password] NVARCHAR(50) NOT NULL, 
    [phn] NVARCHAR(50) NOT NULL, 
    [email] NVARCHAR(50) NOT NULL, 
    [fname] NCHAR(10) NOT NULL, 
    [cart] NCHAR(10) NULL
)
