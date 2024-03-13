#voorbeeld van een forloop
for($i = 0; $i -lt 10; $i = $i + 1){
    write-host "waarde van eerste i: $i"
}

#je kan er ook mee terugtellen
for($i = 15; $i -ne 0; $i = $i - 1){
    write-host "waarde van tweede i: $i"
}

#of grote stappen mee maken 
for($i = 1; $i -le 8000; $i = $i * 2){
    write-host "waarde van derde i: $i"
}