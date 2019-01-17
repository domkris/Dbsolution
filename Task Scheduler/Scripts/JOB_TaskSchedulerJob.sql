
INSERT INTO Log_History
SELECT ApplicationName, Message, MessageType, UserCreated,LogDateTimeStamp, GETDATE() FROM Log
WHERE LogDateTimeStamp < DATEADD(YEAR, -2, DATEADD(HOUR, -1,GETDATE()))

--PRINT DATEADD(YEAR, -2, DATEADD(HOUR, -1,GETDATE()))
--SELECT * FROM Log_History