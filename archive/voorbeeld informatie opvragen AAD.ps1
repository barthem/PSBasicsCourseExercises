#dit is een voorbeeld hoe je informatie uit Azure Active Directory kan halen. Je kan delen ervan herbruiken voor je eigen programma. 

#importeer de module, anders werkt die niet met powershell  7
import-module -name azuread -usewindowspowershell

#opend een window waar je met je OGD credentials moet inloggen. Zorgt ervoor dat deze sessie dingen uit AAD mag lezen.
$sessietoken = connect-azuread

#dit vraagt het email addres op met het account waarmee je authenticeerde bij AAD in de vorige stap
$EmailOGDCredentials = $sessietoken.account.id 

#dit weet AAD allemaal van jou 
get-azureaduser -ObjectId  $EmailOGDCredentials | select-object *

#een kleine selectie van 5 users in onze OGD tenant.
Get-AzureADUser -top 5 | Select-Object Displayname, mail, AccountEnabled

#vragen op wie jou manager is
$manager = Get-AzureADUserManager -ObjectId $EmailOGDCredentials
write-host "manager van $EmailOGDCredentials is" $manager.Displayname

#welke devices zijn er geregistreerd staan onder jou naam
write-host "$EmailOGDCredentials heeft de volgende devices onder zijn naam staan:"
Get-AzureADUserOwnedDevice -ObjectId $EmailOGDCredentials

