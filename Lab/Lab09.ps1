# Script Name: Lab 9
# Author: Jin Kim
# Date of Last revision: 08/06/2020
# Description of purpose: To output event logs that using Powershell commands. Utilizing built-in filtering to select specific infromation needed.

# DECLARATION OF VARIABLES
$ProcessByCPU = Get-Process | Where-Object -Property CPU -ne $null |Sort-Object -Property CPU -Descending;
$ProcessByID = Get-Process | Sort-Object -Property Id -Descending;
$ProcessByWK = Get-Process | Sort-Object -Property WorkingSet -Descending | Select-Object -First 5;
$OpenInternet = Start-Process -FilePath "C:\Program Files\Internet Explorer\iexplore.exe" -Args "https://owasp.org/www-project-top-ten/" -Wait;

# DECLARATION OF FUNCTIONS
function GetPbyCPU()
{
    Header("This is sorted by CPU usage")
    ProcessingDATA;
    $ProcessByCPU;
}

function SortByID()
{
    Header("This is sorted by ID");
    ProcessingDATA;
    $ProcessByID;
}

function HighestWS()
{
    Header("Top Five active process");
    ProcessingDATA;
    $ProcessByWK;
}

function OpenExplorer() {
    Header("Open Explorer");
    ProcessingDATA;
    $OpenInternet;
}

function OpenTenExplorer()
{
    Read-Host -Prompt "Are you ready to see ten browsers? press enter to proceed"
    for ($i = 0; $i -lt 10; $i++) {
        Start-Process "iexplore.exe" "https://owasp.org/www-project-top-ten";
    }
}


## HELPER METHODS ##
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
    Start-Sleep -m 1500
}

# MAIN
GetPbyCPU;
SortByID;
HighestWS;
OpenExplorer
OpenTenExplorer
#END

<#
Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.
Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.
Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.
Start the process Internet Explorer (iexplore.exe) and have it open https://owasp.org/www-project-top-ten/.
Start the process Internet Explorer (iexplore.exe) ten times using a for loop. Have each instance open https://owasp.org/www-project-top-ten/.
Close all Internet Explorer windows.
Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Internet Explorer or MS Edge.#>