# Script Name: Lab 10
# Author: Jin Kim
# Date of Last revision: 08/07/2020
# Description of purpose: To create a file/folder/zip file and copy it over to the desktop. And using the same logic to other remote computer.

# DECLARATION OF VARIABLES
ipconfig /all | Out
# DECLARATION OF FUNCTIONS

# MAIN

# END
ipconfig /all | Out-File "./network_report.txt"
$ourfilesdata = Get-Content "./network_report.txt"
$ourfilesdata | Select-String IPv4;
rm "./network_report.txt";