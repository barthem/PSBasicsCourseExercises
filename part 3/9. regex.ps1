#voorbeeld 1: We willen alle mailaddressen uit een email halen
$email = @"
Hallo cursist,

Als je meer informatie wilt OGDopleiding, contacteer opleidingen@ogd.nl

Met vriendelijke groet, 
Bart de Langen
Bart.delangen@ogd.nl

Voor alle andere infra gerelateerde vragen, email InfraTeam@ogd.onmicrosoft.com.
"@

# regex patroon voor email addressen
$emailPattern = '[a-zA-Z\.]+@[a-zA-Z\.]+\.[a-zA-Z]{2,4}'

# match de regulaire expressie, -allmatches flag is belangrijk, 
#anders returns die alleen de first match 
$emailsAddressen = $email |select-string -Pattern $emailPattern  -AllMatches

# Output all matchde email addresses
$emailsAddressen.matches.value


#voorbeeld 2, is dit een ogd mailaddres?
$email = "opleidingen@ogd.nl"
if ($email -match "[\w\.]+@ogd\.nl") {
    Write-Output "dit is een OGD mailaddres"
} else {
    Write-Output "dit is geen OGD mailaddres"
}


#voorbeeld 3: krijg alle berichten waar failed staat in de message
Get-EventLog -LogName system | where-object {$_.message -match ".+failed.+"}

#voorbeeld 4: is het een mobiel nummer
function set-mobilenumber {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true)]
        [ValidatePattern('06-\d{8}',
        ErrorMessage = 'zorg dat de input een 06-xxxxxxxx format heeft')]
        [string]$mobielnummer
    )

    Write-Output "jup, $mobielnummer ziet eruit als een mobielnummer"
}
# Example usage:
set-mobilenumber -mobielnummer "06-12345678"


#voorbeeld 5: replace iban nummer
$bericht = " mijn iban nummer is NL20INGB0001234567, pls dont hack it"
$bericht -replace "NL\d{2}[A-Z]{4}\d{10}", "NL#################"

# Tekst waaruit je de gegevens wilt filteren
$text = 'Jan Jansen, 
geboren op 14 mei 1985 in Amsterdam, 
werkt als projectmanager bij OGD ict en woont in Utrecht. 
Hij is bereikbaar via jan.jansen@ogd.nl of 06-12345678.'

# vervang E-mail
$text = $text -replace "[\w\.]+@ogd\.nl", "####"
# vervang telefoon
$text = $text -replace '06-\d{8}', "####"
# vervang OGD ict
$text = $text -replace 'OGD ict', "####"
$text
