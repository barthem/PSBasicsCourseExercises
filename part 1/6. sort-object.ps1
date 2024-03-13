#Stel ik wil een lijst hebben van alle services, maar namen op alfabetische volgorde
Get-Service | Sort-Object name
Read-Host "druk op enter om door te gaan" | Out-Null

#Stel ik wil een lijst hebben van alle services, maar dan gesorteerd op status
Get-Service | Sort-Object status
Read-Host "druk op enter om door te gaan" | Out-Null

#Stel ik wil een lijst hebben van alle services, maar op status. Running bovenaan
Get-Service | Sort-Object status -descending
Read-Host "druk op enter om door te gaan" | Out-Null

#Stel ik wil een lijst hebben van alle services, maar op status EN op naam
get-Service | Sort-Object status, name
Read-Host "druk op enter om door te gaan" | Out-Null