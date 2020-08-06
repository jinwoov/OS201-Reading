# Code Challenge

```ps1

## It gets all of the current processes
Get-Process

## just getting the powershell info
Get-Process pwsh 

## Print all available data about one or more processes
Get-Process winword, explorer | Format-Lst *

## Sort the output of a commandlet by property
## [commandlet] | Sort-Object -Property [property to sort by] -Descending

# Initialize a process by its filepath

Start-Process -FilePath "C:\Program Files (x86)\Foxit Software\Foxit PhantomPDF\FoxitPhantomPDF.exe"

for($i = 1; i -le 5 ; $i++)
{
    echo "$i"
}




```


---

# Class9: Imaging, Backup and Recovery


To start the process initialize

To stop the process terminate

npm : non page memory
    - part of the computer's ram which used by the kernel and drivers of the operation system.
pm: paged memory
    - consists of virtual memory that can be paged in and out of the system
    - page file is page file that window can use
WK: The size of the working set of the process, in kilobytes. The working set consists of the pages of memory that were recently referenced by the process.
SI: session id for current session  
    0: all services
    1: first logged on user
    2: you switch from user 1 to new user logon


Objective for import and export OVA 
- Confidentiality, availability, integrity is required to backup files.
- there are a lots of tools to prevent this from proactive.
- base: known set of good configuraiton that we can go back of
- backup: 
- restoration: something went wrong and you have go back to time and undo the situation
- cloud: computer system that hosted off 

what is way to backup file
- trick the computer to else where
- window folder redirection.
- agent base endpoint software: 

- Gartner magic quadrant for data center Back up and recovery solution
    - is a consumer report
    - got review from the businesses

- how do we know baseline
    - we can reinstall Windows
    - double VM
    - Image base 
- Imaging: taking a picture
    - photo never changes, file never changes
    - backup solution is imaging, because you are taking screenshot of that spot
- virtual box
    1. export
    2. Snap shot is very powerful as they can: vm's restore point.
    3. clone