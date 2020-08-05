# Script Name: Lab 8
# Author: Jin Kim
# Date of Last revision: 08/05/2020
# Description of purpose: To output event logs that using Powershell commands. Utilizing built-in filtering to select specific infromation needed.

# DECLARATION OF VARIABLES
## This is grab current username and assigning it to the variable
$user = $env:UserName

## output files
$twentyFourFile = New-Item -type file "c:\Users\$user\Desktop\last_24.txt" -Force
$errorFile = New-Item -type file "c:\Users\$user\Desktop\errors.txt" -Force

## Getting Event logs
$twentyFour = Get-EventLog -LogName System -After (Get-Date).AddDays(-1)
$justError = Get-EventLog -LogName System -EntryType Error
$eventID = Get-EventLog -LogName System -InstanceId 16
$LastTwentyLogs = Get-EventLog -LogName System -Newest 20
$LastFiveHunnit = Get-EventLog -LogName System -Newest 500

# DECLARATION OF FUNCTIONS
<#
.DESCRIPTION
Getting all of the events that happened in last 24 hours
#>
function TwentyFourHour()
{
    Sleeping("events that happened in last twenty four hours")
    $twentyFour | fl * | Out-File $twentyFourFile
}

<#
.DESCRIPTION
Just getting the event that has error tag
#>
function TypeError()
{
    Sleeping("events type that has Error tags")
    $justError | fl * | Out-File $errorFile
}
<#
.DESCRIPTION
Filtering events by ID 16 and output it to the console
#>
function EventIdFilter()
{
    PromptUser
    WriteGreen("This is filtered by event ID")
    $eventID | fl *
}
<#
.DESCRIPTION
Getting recent twenty entries from the system event logs
#>
function LastTwentyEntries()
{
    PromptUser
    WriteGreen("This is recent 20 entries from system event")
    $LastTwentyLogs | fl *
}
<#
.DESCRIPTION
Getting recent five hundred entries from the system event logs
#>
function LastFiveHunnitEntries()
{
    PromptUser
    WriteGreen("This is recent 500 entries from system event")
    $LastFiveHunnit | fl *
}

### Helper function
<#
.DESCRIPTION
Prompting user that output can be overbearing
#>
function PromptUser()
{
    Read-Host -Prompt "There will be a lot of output are you ready? Press Enter"
    Clear-Host
}
<#
.DESCRIPTION
Create a header in green for each command execution
#>
function WriteGreen($stringT)
{
    Write-Host $stringT -ForegroundColor Green
}

<#
.DESCRIPTION
Sleep method that will pause system to give more realistic feel to the application
#>
function Sleeping($s)
{
    Write-Host "Currently generating $s"
    #To pause for 1.5 second
    Start-Sleep -m 2000
    Write-Host "Finished"
    Start-Sleep -m 1000
}

# MAIN
Set-ExecutionPolicy 1 -Force
TwentyFourHour
TypeError
EventIdFilter
LastTwentyEntries
LastFiveHunnitEntries

#END