USE [student]
GO
/****** Object:  StoredProcedure [dbo].[GetCollegeDetails]    Script Date: 06-11-2024 13:52:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[GetCollegeDetails] (@id int)

AS
BEGIN

	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from College where clg_id=@id
END
