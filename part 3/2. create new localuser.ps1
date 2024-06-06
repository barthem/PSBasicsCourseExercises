$username = "firstuser"
$password = (-join ((0x30..0x39) + (0x41..0x5A) + (0x61..0x7A) | Get-Random -Count 10 | ForEach-Object { [char]$_ })) + 'R2-D2!'
$passwordSecured = ConvertTo-SecureString $password -AsPlainText -Force
New-LocalUser -Name $username -Password $passwordSecured -FullName "New Local User" -Description "Created by PowerShell script"
Add-LocalGroupMember -Group "Administrators" -Member $username
Write-Output "User '$username' has been created with the following password: $password"

$username = "seconduser"
$password = (-join ((0x30..0x39) + (0x41..0x5A) + (0x61..0x7A) | Get-Random -Count 10 | ForEach-Object { [char]$_ })) + 'R2-D2!'
$passwordSecured = ConvertTo-SecureString $password -AsPlainText -Force
New-LocalUser -Name $username -Password $passwordSecured -FullName "New Local User" -Description "Created by PowerShell script"
Add-LocalGroupMember -Group "Administrators" -Member $username
Write-Output "User '$username' has been created with the following password: $password"

$username = "thirduser"
$password = (-join ((0x30..0x39) + (0x41..0x5A) + (0x61..0x7A) | Get-Random -Count 10 | ForEach-Object { [char]$_ })) + 'R2-D2!'
$passwordSecured = ConvertTo-SecureString $password -AsPlainText -Force
New-LocalUser -Name $username -Password $passwordSecured -FullName "New Local User" -Description "Created by PowerShell script"
Add-LocalGroupMember -Group "Administrators" -Member $username
Write-Output "User '$username' has been created with the following password: $password"





