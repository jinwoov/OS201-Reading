# Script Name: Lab 11
# Author: Jin Kim
# Date of Last revision: 08/10/2020
# Description of purpose: To create a file that saves ip configuration information 

# DECLARATION OF VARIABLES
$savefile = "./network_report.txt";
$Loopback = "127.0.0.1";
$GoogleAd = "google.com";
# DECLARATION OF FUNCTIONS

<#
.Description
Saving the IP config
#>
function SaveIPconfig()
{
    Header("We are saving Ip configuration to text file");
    WaitProcess;
    ipconfig /all | Out-File $savefile;
}
<#
.Description
Taking the ip 4 information from text file.
#>
function GrabIPFour()
{
    $ourfilesdata = Get-Content "./network_report.txt"
    Header("We are grabbing Ip 4 from the txt file");
    WaitProcess;
    $ourfilesdata | Select-String IPv4;
}
<#
.Description
Removing the file after everything is done
#>
function RemoveTextFile()
{
    Header("We are removing text file now");
    WaitProcess;
    Remove-Item "./network_report.txt";
}
<#
.Description
Checking if given IP is working
#>
function CheckPackets([string]$IpAddress)
{
    Header("Checking if ping $IpAddress works");
    WaitProcess;
    ping $IpAddress;
}

###################
## HELPER METHOD ##
###################
<#
.Description
Create a header to the each commands to be more readable
#>
function Header($s)
{
    Write-Host $s -ForegroundColor Green;
}
<#
.Description
To create a transition time to be more realistic application
#>
function WaitProcess
{
    Start-Sleep -s 1.5;
}

# MAIN
SaveIPconfig;
GrabIPFour
RemoveTextFile
CheckPackets($Loopback);
CheckPackets($GoogleAd);
# END