@Echo Off

echo DMC
echo DMC CORPORATION


echo CLIENT BOOT TIME >> ClientUptime.csv

:: Add single line spacing
echo. >> ClientUptime.csv


::User and host information
echo This report was run by Username: %USERNAME% on Client:%COMPUTERNAME% >> ClientUptime.csv


:: Add double line spacing
echo. >> ClientUptime.csv
echo. >> ClientUptime.csv


:: Add double line spacing
echo. >> ClientUptime.csv
echo. >> ClientUptime.csv


REM /f reads line by line so it means that the MachineList text file will be handled line by line  %%a is for the variable


for /f %%a in (Machine_List.txt) do SystemInfo /s %%a | Findstr /c:"System Boot Time" /c:"Host Name" >> ClientUptime.csv & Echo ******************************************************************************************************************** >> ClientUptime.csv

echo.
echo.

pause