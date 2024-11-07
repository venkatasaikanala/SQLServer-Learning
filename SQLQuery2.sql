
CREATE PROCEDURE GetCollegeDetails

AS
BEGIN

	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from College 
	
END
GO
exec GetCollegeDetails