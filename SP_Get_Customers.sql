USE Test
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*-----------------------------------------------------------------------------------------------------------------------------------------------
Initials    IT Request  Date		Change
EDA			Create		2018/01/15	Create
-------------------------------------------------------------------------------------------------------------------------------------------------
##Name:			SP_Get_Customers
##Description:	Get customers
##Author:		Egon Allison
##Owner:		Contact Manager App
##Created:		2018/01/15
##IT Request:	Create
##Dependencies:	_
##Used By:		Customer Contact Manager App
##Example:		exec SP_Get_Customers NULL
----------------------------------------------------------------------------------------------------------------------------------------------*/

ALTER PROCEDURE SP_Get_Customers
(
	@CustomerId INT = NULL
)
AS

BEGIN
	SELECT  * 
	FROM Test.dbo.Customer C WITH(NOLOCK)	
	WHERE 1=1
		AND C.ID = ISNULL(@CustomerId, C.ID)
END