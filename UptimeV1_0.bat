@Echo Off

echo DMC
echo DMC CORPORATION


Title "DMC CORP - Client Boot Time Checker V1.0"

:: Title of the Report

echo CLIENT BOOT TIME >> ClientUptime.csv

:: Add single line spacing
echo. >> ClientUptime.csv


::User and host information
echo This report was run by Username: %USERNAME% on Client:%COMPUTERNAME% >> ClientUptime.csv


:: Add double line spacing
echo. >> ClientUptime_%curr_date%.csv
echo. >> ClientUptime_%curr_date%.csv

:: Date and Time the report was executed
echo Date:%curr_date% >> ClientUptime.csv
echo Time:%start_time%Hrs >> ClientUptime.csv

:: Add double line spacing
echo. >> ClientUptime.csv
echo. >> ClientUptime.csv


REM /f reads line by line so it means that the MachineList text file will be handled line by line  %%a is for the variable


for /f %%a in (Machine_List.txt) do SystemInfo /s %%a | Findstr /c:"System Boot Time" /c:"Host Name" >> ClientUptime.csv & Echo ******************************************************************************************************************** >> ClientUptime.csv

echo.
echo.

pause