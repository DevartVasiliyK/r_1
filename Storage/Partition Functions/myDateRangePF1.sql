﻿CREATE PARTITION FUNCTION [myDateRangePF1] ([datetime])
  AS RANGE RIGHT FOR VALUES ('2003-02-01 00:00:00.000', '2003-03-01 00:00:00.000', '2003-04-01 00:00:00.000', '2003-05-01 00:00:00.000', '2003-06-01 00:00:00.000', '2003-07-01 00:00:00.000', '2003-08-01 00:00:00.000', '2003-09-01 00:00:00.000', '2003-10-01 00:00:00.000', '2003-11-01 00:00:00.000', '2003-12-01 00:00:00.000')
GO