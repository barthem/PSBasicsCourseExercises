#vraag alle "objecten", waardes en functies op van get-process door ze te pipe naar get-member
Get-process | Get-Member
Read-Host "druk op enter om door te gaan" | Out-Null

# ik wil alle properties die get-process beschikbaar heeft zien. dan kunnen we die selecteren met een wildcard
get-process | select-object * | out-gridview
Read-Host "druk op enter om door te gaan" | Out-Null

#dit is veel te veel informatie, ik wil enkel de naam zien, hoeveel geheugen die gebruikt, en of die niet vastgelopen is
get-process | select-object -property Name, responding, VirtualMemorySize | out-gridview
