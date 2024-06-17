#genereer wachtwoord
$password  = $(-join ((33..126) | Get-Random -Count 32 | % {[char]$_}) | ConvertTo-SecureString -force -asplaintext)

#maak user aan met enkel cmdlet
new-aduser -name "victor von Doom" -UserPrincipalName "Victor.vonDoom"`
 -title "Baron" -givenname "Victor" -surname "Von Doom" -office "sateliteoffice 1B/Latveria"`
 -emailaddress "victor.vonDoom@vondoomindustries.com"-enabled $true -AccountPassword $password
-HomePage "https://vondoomindustries.doom"  -PasswordNeverExpires  $false -SmartcardLogonRequired  $false


#maak user aan met splatting
$splat = @{
    name = "Victor von Doom" 
    UserPrincipalName =  "Victor.vonDoom"
    title = "Baron"
    displayname = "Victor von Doom" 
    givenname = "Victor"
    surname = "Von Doom"
    office = "sateliteoffice 1B/Latveria"
    EmailAddress = "victor.vonDoom@vondoomindustries.com"
    AccountPassword = $password
    Enabled = $true
    HomePage = "https://vondoomindustries.doom"
    PasswordNeverExpires = $false
    SmartcardLogonRequired = $false
}
new-aduser @splat -ErrorAction stop

#vraag alle windows servers op.
$disabledServers = get-ADComputer -filter 'operatingsystem -like "windows server"'

# woops! where-object verkeerd geschreven! dit geeft een non-terminating error
$disabledServers = $disabledServers |whre-object Enabled eq $true 

#good job, je hebt zojuist alle windows servers verwijderd :(
$disabledServers = $disabledServers | remove-ADObject
