﻿CREATE PARTITION FUNCTION [myRangePF1] ([int])
  AS RANGE FOR VALUES (1, 100, 1000)
GO