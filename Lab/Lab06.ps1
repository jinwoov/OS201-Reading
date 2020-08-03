# Script Name: Lab 6
# Author: Jin Kim
# Date of Last revision: 08/03/2020
# Description of purpose: To output system specification to text file and condense it using select-string method.

# DECLARATION OF VARIABLES
$COMPUTERSPEC = Get-WMIObject -Class Win32_ComputerSystem;
$BIOS = Get-WmiObject -Class Win32_Bios;
$MOTHERBOARD = Get-WmiObject -Class Win32_BaseBoard;
$CPU = Get-WmiObject -Class Win32_Processor;
$LOGICALDRIVE = Get-WMIObject -Class Win32_LogicalDisk;
$PHYSICALDRIVE = Get-WMIObject -Class win32_diskdrive;
$NETWORK = Get-WmiObject Win32_NetworkAdapter;
$NETWORKCARD = Get-WmiObject win32_networkadapterconfiguration;

# DECLARATION OF FUNCTIONS

# MAIN
## To get system specification and piping it to show only relevant data in Format table
Write-Host "System Information" -ForegroundColor Green;
Write-Host "";
$COMPUTERSPEC | Format-Table Domain, Manufacturer, Model, Name, PrimaryOwnerName ,TotalPhysicalMemory;

## To get BIOS Information and piping it to show only relevant data in Format table
Write-Host "BIOS Information" -ForegroundColor Green;
$BIOS | Format-Table PSComputerName, Name, BiosCharacteristics, BIOSVersion, Manufacturer, ReleaseDate, SMBIOSMajorVersion, SMBIOSMinorVersion;

## To get MotherBoard Information and piping it to show only relevant data in Format table
Write-Host "MotherBoard Information" -ForegroundColor Green;
$MOTHERBOARD | Format-Table Manufacturer, Product, SerialNumber, Version;

## To get CPU Information and piping it to show only relevant data in Format table
Write-Host "CPU Information" -ForegroundColor Green;
$CPU | Format-Table Name, Number*, Manufacturer, MaxClockSpeed;

## To get Logical drive Information and piping it to show only relevant data in Format table
Write-Host "Logical Drive Information" -ForegroundColor Green;
$LOGICALDRIVE | Format-Table DeviceID, FreeSpace, Size,VolumeName;

## To get Physical drive Information and piping it to show only relevant data in Format table
Write-Host "Physical Drive Information" -ForegroundColor Green;
$PHYSICALDRIVE | Format-Table -Property PSComputerName, Size, Model, MediaType;

## To get Total Memory Information and piping it to show only relevant data in Format table
Write-Host "Total Memory" -ForegroundColor Green;
$COMPUTERSPEC | Format-Table -Property TotalPhysicalMemory;

## To get network card information and piping it to show only relevant data in Format table
Write-Host "Network Card Information" -ForegroundColor Green;
$NETWORK | Format-Table Name, ServiceName, MACAddress, AdapterType;

## To get network card setting information and piping it to show only relevant data in Format table
Write-Host "Network Card Settings"
$NETWORKCARD | Format-Table ServiceName, IPAddress, DefaultIPGateway, DHCPEnabled, Description;

# END