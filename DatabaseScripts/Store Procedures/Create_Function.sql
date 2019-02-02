USE [RestAPIDapper]
GO
/****** Object:  StoredProcedure [dbo].[Create_Product]    Script Date: 12/28/2018 8:29:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		TEDU
-- Create date: 18/12/2018
-- Description:	Select one recorrd by id 
-- =============================================
create PROCEDURE [dbo].[Create_Function]
	@id varchar(50),
	@name nvarchar(50),
	@url nvarchar(50),
	@parentId varchar(50),
	@sortOrder int,
	@cssClass nvarchar(50),
	@isActive bit
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO [dbo].[Functions]
           ([Id]
           ,[Name]
           ,[Url]
           ,[ParentId]
           ,[SortOrder]
           ,[CssClass]
           ,[IsActive])
     VALUES
           (@id
           ,@name
           ,@url
           ,@parentId
           ,@sortOrder
           ,@cssClass
           ,@isActive)

END
