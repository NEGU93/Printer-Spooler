@ECHO OFF
ECHO --------------- Printer Spooler made by NEGU ---------------
ECHO J. A. BARRACHINA

:Main
ECHO This will delete all documents in the printer spooler
set /p D="Are you sure you want to continue? Y/N: "

IF %D%==Y (
	NET STOP Spooler /y
	ECHO deleting files of the printer spooler
	del /q C:\Windows\System32\spool\PRINTERS
	NET START Spooler /y
) ELSE (
	IF NOT %D%==N (
		GOTO Main
	)
)

ECHO Done...
PAUSE