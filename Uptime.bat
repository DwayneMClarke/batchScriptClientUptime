@Echo Off
set curr_date=%date:~-4,4%_%date:~-10,2%_%date:~-7,2%_%date:~-0,3%
set start_time=%time:~0,2%_%time:~3,2%
set hr=%time:~0,2%
set hr=%hr: =0%

echo DMC
echo DMC CORPORATION

echo.
echo.

echo G'Day Mate!!  Checking the uptimes of all the clients in all 3 Sites will take about 10-15 minutes so grab a cup of coffee!! If it makes you feel better, doing this manually would be a great pain :)   BTW  You ROCK!!

echo.
echo.

echo What has 4 letters, but has 3 letters and never has 5 letters?  Do you know the answer? --- 

echo.
echo.

Title "DMC CORP - Client Boot Time Checker V1.3"

:: Title of the Report

echo CLIENT BOOT TIME >> ClientUptime_%curr_date%.csv

:: Add single line spacing
echo. >> ClientUptime_%curr_date%.csv


::User and host information
echo This report was run by Username: %USERNAME% on Client:%COMPUTERNAME% >> ClientUptime_%curr_date%.csv


:: Add double line spacing
echo. >> ClientUptime_%curr_date%.csv
echo. >> ClientUptime_%curr_date%.csv

:: Date and Time the report was executed
echo Date:%curr_date% >> ClientUptime_%curr_date%.csv
echo Time:%start_time%Hrs >> ClientUptime_%curr_date%.csv

:: Add double line spacing
echo. >> ClientUptime_%curr_date%.csv
echo. >> ClientUptime_%curr_date%.csv


REM /f reads line by line so it means that the MachineList text file will be handled line by line  %%a is for the variable


for /f %%a in (Machine_List.txt) do SystemInfo /s %%a | Findstr /c:"System Boot Time" /c:"Host Name" >> ClientUptime_%curr_date%.csv & Echo ******************************************************************************************************************** >> ClientUptime_%curr_date%.csv

echo.
echo.

echo The answser is -- what has 4 letters in the word, but has 3 letters in the word and never has 5 letters in the word -- GOTCHA!!

pause