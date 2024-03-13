#dit is een voorbeeld van een string. kan je herkennen aan de ""
[string]$name = “Bart de Langen”

#dit is een integer. Een volledig nummer (zonder komma's). 
[int]$age = 28

#dit is een boolean, Waar of Onwaar\. wordt aangegeven met $true of $false
[bool]$isAmazing = $true

#Alles wat niet 0 is is altijd $true, alles wat de waarde 0 is ook $false
[bool]$isSuperAmazing = 1
[bool]$isBoring = 0

#dit is een array, een collectie van meerdere 
[array]$huisdiernamen = @(“roeter”, “switch”)

write-host "$name is $age, hij heeft 2 cavias genaamd $($huisdiernamen[0]), en $($huisdiernamen[1]). die cavias zijn amazing, you better believe it is $isAmazing"

