# Script Name: Lab 10
# Author: Jin Kim
# Date of Last revision: 08/06/2020
# Description of purpose: To output event logs that using Powershell commands. Utilizing built-in filtering to select specific infromation needed.

# DECLARATION OF VARIABLES
$user = $env:UserName
$ComputerDesk = "C:\Users\$user\Desktop";
# DECLARATION OF FUNCTIONS
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
function BackSameComp([string]$Dest)
{
    Header("Copying right now!");
    WaitProcess;
    Copy-Item DeathStar.txt $Dest\DeathStar.txt;
    Robocopy .\Robot $Dest\Robot;
}

function CompressCopy()
{
    Header("Compressing and copying over");
    WaitProcess;
    Compress-Archive -LiteralPath .\Robot -DestinationPath C:\Users\$user\Desktop\Robot.zip;
}

function BackupDifComp()
{
    Header("Copying it to Document folder");
    Copy-Item "DeathStar.txt" "\\MSEDGEWIN10\Users\IEUser\Desktop\";
    Robocopy ".\Robot" "\\MSEDGEWIN10\Users\IEUser\Desktop\Robot";
    Compress-Archive -Path ".\Robot" "\\MSEDGEWIN10\Users\IEUser\Desktop\Robot.zip";

}

"C:\Users\Kimberly\Desktop\Saturday2.txt" 
\\MSEDGEWIN10\Users\IEUser\Desktop


###################
## HELPER METHOD ##
###################

function Header($s)
{
    Write-Host $s -ForegroundColor Green;
}

function WaitProcess
{
    Start-Sleep -s 1.5;
}
# MAIN
# StartFile;
# BackSameComp($ComputerDesk);
# CompressCopy;
# Read-Host -Prompt "Finished local backup? ready for backup on different computer?";
BackupDifComp;
#END

