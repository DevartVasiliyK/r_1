﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE   FUNCTION [doc_programmability].[simple_function_copy] (@id INT)
RETURNS TABLE
AS
  RETURN (
  SELECT
    ID
  FROM doc_tables.FOR_DEPENDS
  WHERE ID = @id
  )
GO