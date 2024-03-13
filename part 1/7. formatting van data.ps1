#formateer alle processen als een list
get-service| Format-List
Read-Host "druk op enter om door te gaan" | Out-Null

#formateer alle processen als een tabel
#FOOTNOTE: als je geen parameters meegeeft, weergeeft bij enkel de Name Kolom
get-service| Format-table
Read-Host "druk op enter om door te gaan" | Out-Null

#formateer alle processen extra wijd als een tabel
get-service| Format-wide
Read-Host "druk op enter om door te gaan" | Out-Null

#formateer alle processen als een apparte window
get-service| out-gridview
Read-Host "druk op enter om door te gaan" | Out-Null