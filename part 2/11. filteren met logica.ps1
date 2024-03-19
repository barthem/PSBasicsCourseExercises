#laat enkel de services zien met BITS in de naam 
get-service |where-object {$_.processname -eq "bits"}
Read-Host "druk op enter om door te gaan" | Out-Null

#weergeef enkel de services die momenteel running zijn
get-service |where-object {$_.status -eq "running"}

#weergeef enkel de services die momenteel running zijn, en startup type "manuel" is
#voor deze statement is extra parenthesis nodig, omdat powershell anders niet weet wat die eerste moet checken
get-service |Select-Object displayname, status, starttype  |where-object {$_.status -eq "running" -and $_.starttype -eq "Manuel"} | out-gridview

