# Script Name: Lab 8
# Author: Jin Kim
# Date of Last revision: 08/05/2020
# Description of purpose: To output system specification to text file and condense it using select-string method.

# DECLARATION OF VARIABLES
$user = $env:UserName
## output files
$twentyFourFile = New-Item -type file "c:\Users\$user\Desktop\last_24.txt" -Force
$errorFile = New-Item -type file "c:\Users\$user\Desktop\errors.txt" -Force
## Getting Event logs
$twentyFour = Get-EventLog -LogName System -After (Get-Date).AddDays(-1)
$justError = Get-EventLog -LogName System -EntryType Error
$eventID = Get-EventLog -LogName System -InstanceId 16
$LastTwentyLogs = Get-EventLog -LogName System -Newest 20

# DECLARATION OF FUNCTIONS
function WriteGreen($stringT)
{
    Write-Host $stringT -ForegroundColor Green
}
# MAIN
## Getting all of the events that happened in last 24 hours
$twentyFour | Out-File $twentyFourFile
$justError | Out-File $errorFile
WriteGreen("This is event ID")
$eventID
WriteGreen("This is recent 20 entries from system event")
$LastTwentyLogs

