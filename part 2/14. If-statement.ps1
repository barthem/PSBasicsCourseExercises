#draaid de code als een statement $true is, of betergezegt als die niet $false, $null , of o is.
if($true){
    write-host "code wordt gedraait" -BackgroundColor green
} else {
    write-host "code wordt niet gedraait" -BackgroundColor red
}

#Als er False uitkomt draait die hem niet. 
if($false){
    write-host "code wordt gedraait" -BackgroundColor green
} else {
    write-host "code wordt niet gedraait" -BackgroundColor red
}

#een string is niet $null(niks) of $False(0). dus hij voert hem uit.  
if("roeter de cavia"){
    write-host "code wordt gedraait" -BackgroundColor green
} else {
    write-host "code wordt niet gedraait" -BackgroundColor red
}

$number = 10
if ($number -gt 10) {
    Write-Host "Number is greater than 10"
} elseif ($number -lt 10) {
    Write-Host "Number is less than 10"
} else {
    Write-Host "Number is equal to 10"
}


$age = 25
$hasLicense = $true
if ($age -ge 18 -and $hasLicense) {
    Write-Host "You are eligible to drive."
} elseif ($age -lt 18) {
    Write-Host "You are too young to drive."
} else {
    Write-Host "You need a license to drive."
}

