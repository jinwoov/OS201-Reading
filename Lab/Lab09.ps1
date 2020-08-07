# Script Name: Lab 9
# Author: Jin Kim
# Date of Last revision: 08/06/2020
# Description of purpose: To output event logs that using Powershell commands. Utilizing built-in filtering to select specific infromation needed.

# DECLARATION OF VARIABLES
$ProcessByCPU = Get-Process | Where-Object -Property CPU -ne $null |Sort-Object -Property CPU -Descending;
$ProcessByID = Get-Process | Sort-Object -Property Id -Descending;
$ProcessByWK = Get-Process | Sort-Object -Property WorkingSet -Descending | Select-Object -First 5;
$OpenInternet = Start-Process -FilePath "C:\Program Files\Internet Explorer\iexplore.exe" -Args "https://owasp.org/www-project-top-ten/";

# DECLARATION OF FUNCTIONS
<#
.DESCRIPTION 
Method to sort by highest CPU
#>
function GetPbyCPU()
{
    Header("This is sorted by CPU usage")
    ProcessingDATA;
    $ProcessByCPU;
}
<#
.DESCRIPTION
Method to sort ID 
#>
function SortByID()
{
    Header("This is sorted by ID");
    ProcessingDATA;
    $ProcessByID;
}
<#
.DESCRIPTION
Method to get the top five work set.
#>
function HighestWS()
{
    Header("Top Five active process");
    ProcessingDATA;
    $ProcessByWK;
}
<#
.DESCRIPTION
Method to open a internet exlorer.
#>
function OpenExplorer() {
    Header("Open Explorer");
    ProcessingDATA;
    $OpenInternet;
}
<#
.DESCRIPTION
Method to open ten internet explorer.
#>
function OpenTenExplorer()
{
    Read-Host -Prompt "Are you ready to see ten browsers? press enter to proceed";
    for ($i = 0; $i -lt 10; $i++) 
    {
        Start-Process "iexplore.exe" "https://owasp.org/www-project-top-ten";
    }
}
<#
.DESCRIPTION
Method that close internet explorer
#>
function CloseProcess()
{
    Read-Host -Prompt "Do you want to quit the Internet Explorer. Press Enter";
    Stop-Process -Name "iexplore" -Force;
}
<#
.DESCRIPTION
Close program using the ID
#>
function CloseByID([int]$processID)
{
    Read-Host -Prompt "Do you want to quit the $processID ? Press Enter";
    Stop-Process -Id $processID;
}



####################
## HELPER METHODS ##
####################
<#
.DESCRIPTION
Method that create header for each tasks
#> 
function Header([string]$s)
{
    Write-Host;
    Write-Host $s -ForegroundColor Green;
    Write-Host;
}
<#
.DESCRIPTION
Halting the process to give more realistic touch
#> 
function ProcessingDATA()
{
    Start-Sleep -m 1500;
}

# MAIN
GetPbyCPU;
SortByID;
HighestWS;
OpenExplorer;
OpenTenExplorer;
CloseProcess;
CloseByID(3504);
#END

