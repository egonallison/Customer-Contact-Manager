USE Test
GO
/****** Object:  StoredProcedure [dbo].[KB_GetAuthorizationTariff]    Script Date: 2018/01/14 7:41:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*-----------------------------------------------------------------------------------------------------------------------------------------------
Initials    IT Request  Date		Change
EDA			Create		2018/01/14	Create	
-------------------------------------------------------------------------------------------------------------------------------------------------
##Name:			SP_Insert_Customer
##Description:	Insert new customer
##Author:		Egon Allison
##Owner:		Contact Manager App
##Created:		2018/01/14
##IT Request:	Create
##Dependencies:	_
##Used By:		Customer Contact Manager App
##Example:		exec SP_Insert_Customer 'Test', -33.8507899, 25.6332259
----------------------------------------------------------------------------------------------------------------------------------------------*/

ALTER PROCEDURE SP_Insert_Customer
(
	@NAME VARCHAR(100),
	@Latititude DECIMAL(9,6) = NULL,
	@Longtitude DECIMAL(9,6) = NULL
)

AS

BEGIN
	INSERT INTO [dbo].[Customer]([NAME],[Latititude],[Longtitude])
	VALUES (@NAME,@Latititude,@Longtitude)

	SELECT @@ROWCOUNT AS INSERTED
END