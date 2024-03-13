#do/while
$Getal = 0
do {
    Write-Output "Getal is nu $Getal"
    $Getal ++
}
while ($Getal -lt 4)

#while
$Getal = 0
while ($Getal -lt 4){
    Write-Output "Getal is nu $Getal"
    $Getal ++
}

#foreach
$Getallen = 0..3
foreach ($Getal in $Getallen) {
    Write-Output "Getal is nu $Getal"
}

#for
$Getallen = 0..3
for ($i = 0; $i -lt $Getallen.Count; $i++) {
    Write-Output "Getal is nu $($Getallen[$i])"
}

#ForEach-Object
0..3 | ForEach-Object { 
    Write-Output "Getal is nu $_"
}