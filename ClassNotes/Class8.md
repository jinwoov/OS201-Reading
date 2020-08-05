```ps1
#Shows the event log

Get-EventLog -List

# Get recent entries from an event log on the local computer
Get-EventLog -LogName System -Newest 5

# Find all sources for a specific number of entries in an event log

$Events = Get-EventLog -LogName System -Newest 1000
$Events | Group-Object -Property Source - NoElement | Sort-Object -Property Count -Descending

# Get error events from a specific event log
Get-EventLog -LogName System -EntryType Error


# Get events from an event log using a source and event ID
Get-EventLog -LogName Application -Source Outlook | Where-Object {$_.EventID -eq 63 } | 
    Select-Object -Property Source, EventID, InstanceId, Message
```
DCOM error happens very frequently

