# Script Name: Lab 10
# Author: Jin Kim
# Date of Last revision: 08/07/2020
# Description of purpose: To create a file/folder/zip file and copy it over to the desktop. And using the same logic to other remote computer.

# DECLARATION OF VARIABLES
## Username
$user = $env:UserName
## Computer Desktop
$ComputerDesk = "C:\Users\$user\Desktop";
# DECLARATION OF FUNCTIONS

<#
.Description
This is to create a file if system doesn't exist in the system.
#>
function StartFile()
{
    if(!(Test-Path '.\DeathStar.txt'))
    {
        Header("SETTING UP FILE RIGHT NOW");
        WaitProcess;
        New-Item -Path '.\DeathStar.txt' -ItemType File;
        New-Item -Path '.\Robot' -ItemType Directory;
        New-Item -Path '.\Robot\R2D2.txt' -ItemType File;
    }
}
<#
.Description
This is to back up file/folder from current directory to desktop
#>
function BackSameComp([string]$Dest)
{
    Header("Copying right now!");
    WaitProcess;
    Copy-Item DeathStar.txt $Dest\DeathStar.txt;
    Robocopy .\Robot $Dest\Robot;
}
<#
.Description
To compress the folder into a zip file into a desktop.
#>
function CompressCopy()
{
    Header("Compressing and copying over");
    WaitProcess;
    Compress-Archive -LiteralPath .\Robot -DestinationPath C:\Users\$user\Desktop\Robot.zip;
}

<#
.Description
To do the same functions above and copy it to remote computers desktop
#>
function BackupDifComp()
{
    Header("Copying it to Document folder");
    Copy-Item "DeathStar.txt" "\\MSEDGEWIN10\Users\IEUser\Desktop\";
    Robocopy ".\Robot" "\\MSEDGEWIN10\Users\IEUser\Desktop\Robot";
    Compress-Archive -Path ".\Robot" "\\MSEDGEWIN10\Users\IEUser\Desktop\Robot.zip";
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
## Part 1
StartFile;
BackSameComp($ComputerDesk);
CompressCopy;
## Part 2
Read-Host -Prompt "Finished local backup? ready for backup on different computer?";
BackupDifComp;
#END

