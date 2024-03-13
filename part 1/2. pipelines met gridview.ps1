#we vragen de running services op binnen powershell met get-service

get-service
Write-Host -ForegroundColor White -BackgroundColor red "Dit zijn alle running processen opgevraagt via get-services"
Write-Host -ForegroundColor White -BackgroundColor red "we pipelinen ze nu door naar out-gridview met het | icoon"

read-host "druk op enter om door te gaan" |Out-Null

Write-Host -ForegroundColor White -BackgroundColor red "running command: Get-Service | out-gridview "
Get-Service | out-gridview 


