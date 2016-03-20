@ECHO OFF
ECHO --------------- Printer Spooler made by NEGU ---------------
ECHO J. A. BARRACHINA
ECHO ..
ECHO .
NET STOP Spooler /y
del /q C:\Windows\System32\spool\PRINTERS
NET START Spooler /y

ECHO Done...
PAUSE