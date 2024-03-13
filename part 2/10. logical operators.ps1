#Voorbeeld 1
$number1 = 10
$number2 = 20
$number3 = 30

if (($number1 -lt $number2) -and ($number2 -lt $number3)) {
    Write-Host "The numbers are in ascending order"
} else {
    Write-Host "The numbers are not in ascending order"
}

#voorbeeld 2
$user = "Alice"
$isAdmin = $true
$isManager = $false

if ($isAdmin -or $isManager) {
    Write-Host "$user has administrative privileges"
} else {
    Write-Host "$user does not have administrative privileges"
}

#voorbeeld 3
$user = "Bob"
$isBanned = $true

if (-not $isBanned) {
    Write-Host "$user is allowed to access the system"
} else {
    Write-Host "$user is not allowed to access the system"
}
