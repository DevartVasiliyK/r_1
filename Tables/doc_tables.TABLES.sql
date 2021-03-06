﻿CREATE TABLE [doc_tables].[TABLES] (
  [ID] [int] NOT NULL,
  [FK_ID] [int] NULL,
  [UNIQUE_ID] [int] NULL,
  [CK_ID] [int] NULL,
  [TRIGGER_ID] [int] NULL,
  PRIMARY KEY CLUSTERED ([ID]),
  UNIQUE ([UNIQUE_ID]),
  CONSTRAINT [CK_test] CHECK ([CK_ID]>(0))
)
ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE   TRIGGER [trg_TEST]
ON [doc_tables].[TABLES]
INSTEAD OF INSERT
AS
  SET NOCOUNT OFF;
GO

ALTER TABLE [doc_tables].[TABLES]
  ADD FOREIGN KEY ([FK_ID]) REFERENCES [doc_tables].[FOR_DEPENDS] ([ID])
GO