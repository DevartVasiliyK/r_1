﻿CREATE EVENT NOTIFICATION [Notify_ALTER_T2_/copy]
ON DATABASE
FOR ALTER_TABLE
TO SERVICE 'NotifyService', '8140a771-3c4b-4479-8ac0-81008ab17984'
GO