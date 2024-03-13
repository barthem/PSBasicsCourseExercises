#vraag alle services op. Valt het je op dat je maar 3 kolomen aan informatie krijgt?
get-service 
Read-Host "druk op enter om door te gaan" | Out-Null

#met get-member kunnen we alle extra informatie zien die get-service bevat
get-service | get-member