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

Standard operation policy (SOP)

- They can rely on SOP and refer how to operate
- You can have contructive communication
- SOP can be a thing where guide line to the business
- SOP can be written poorly
- Communication can be deal breaker
- Acceptable use policy: Expectation on how to use things
- Cybersecurity policy: minimal pw complexity, multi factor auth
- SOP: What, when and why
    - new hire, new employee, what they need to perform
    - Each computer config can be different
    - 