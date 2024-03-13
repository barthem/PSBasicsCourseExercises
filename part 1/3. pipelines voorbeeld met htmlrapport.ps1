#we vragen de services op, en maken er een HTML rapportage van. 
#Script loopt er stapgeweis doorheen zodat je in iedere stap ziet wat er door de pipeline heengaat.

#zorgt dat powershell de temp directory pakt voor het rapport.
Set-Location $env:TEMP

#stap 1: we vragen alle services op:
Get-Service
Read-Host "druk op enter om door te gaan."

#stap 2: pipeline de output van get-service door naar Convertto-HTML
Get-Service | ConvertTo-Html
Read-Host "druk op enter om door te gaan."

#stap 3: schrijf de html weg naar een bestand, en open dit bestand vervolgens
Get-Service | ConvertTo-Html | out-file services.html
Invoke-Item services.html