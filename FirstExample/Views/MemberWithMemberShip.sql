CREATE VIEW [dbo].[MemberWithMemberShip]
	AS 
	/*Select m.*, t.*	Renaming the tables so that they are shorter in the following script.*/
	/* After finishing it, exapnd with wildcards*/
	Select [m].[MemberId], [m].[FirstName] AS PersianNames, [m].[LastName], 
		[m].[Phone], [m].[Handicap], [m].[JoinDate], 
		[m].[Gender], [m].[MemberType], [t].[Type], 
		[t].[Fee]
	From dbo.Member m
	left join dbo.Type t ON m.MemberType = t.Type
