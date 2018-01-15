USE Test
GO
/****** Object:  StoredProcedure [dbo].[KB_GetAuthorizationTariff]    Script Date: 2018/01/14 7:41:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*-----------------------------------------------------------------------------------------------------------------------------------------------
Initials    IT Request  Date		Change
EDA			Create		2018/01/15	Create
-------------------------------------------------------------------------------------------------------------------------------------------------
##Name:			SP_Insert_Customer_Contacts
##Description:	Insert new customer
##Author:		Egon Allison
##Owner:		Contact Manager App
##Created:		2018/01/15
##IT Request:	Create
##Dependencies:	_
##Used By:		Customer Contact Manager App
##Example:		exec SP_Insert_Customer_Contacts 'Test Contact', 'test@gmail.com', '0810810810', 1
----------------------------------------------------------------------------------------------------------------------------------------------*/

ALTER PROCEDURE SP_Insert_Customer_Contacts
(	
	@NAME			VARCHAR(100),	
	@Email			VARCHAR(100) = NULL,
	@Contact_Number VARCHAR(12) = NULL,
	@CustomerId		INT
)
AS

BEGIN
	INSERT INTO [dbo].[Customer_Contacts]([NAME],[Email],[Contact Number], [CustomerId])
	VALUES (@NAME, @Email, @Contact_Number, @CustomerId)

	SELECT @@ROWCOUNT AS INSERTED
END