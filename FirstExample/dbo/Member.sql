CREATE TABLE [dbo].[Member]
(
	[MemberId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [FirstName] NVARCHAR(MAX) NULL, 
    [LastName] NVARCHAR(50) NULL, 
    [Phone] NCHAR(10) NULL, 
    [Handicap] INT NULL, 
    [JoinDate] DATETIME NULL, 
    [Gender] CHAR(10) NULL, 
    [MemberType] CHAR(20) NULL, 
    CONSTRAINT [FK_Member_Type] FOREIGN KEY ([MemberType]) REFERENCES [Type]([Type]), 
  ) 
