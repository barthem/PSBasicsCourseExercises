#een foreach itereert automatisch door de objecten heen.
#select-object pakt max 10 objecten,  zorgt dat heel je scherm niet vol staat
$services = get-service| Select-Object -first 10 
ForEach($s in $services){
    write-host $s.Name
}
Read-Host "druk op enter om door te gaan" | Out-Null

#Hij begint bij het begin, en loopt door tot er geen objecten meer zijn om doorheen te gaan.
$letterArray = 'a', 'b', 'c', 'd', 'e', 'f'
foreach($letter in $letterArray){
    write-host $letter
}
Read-Host "druk op enter om door te gaan" | Out-Null

#je kan een foreach ook gebruiken met een pipeline,
get-service |ForEach-Object {write-host $_.Name}
