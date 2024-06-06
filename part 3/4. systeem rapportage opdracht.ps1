$CEOComputer = "bigbawz-pc"
$computer = Get-ADComputer -Filter "Name -eq '$CEOComputer'"
if($computer -eq $null){
    write-host "computer does not exist"
    New-ADComputer -Name $CEOComputer -SamAccountName $CEOComputer
}
set-adcomputer -identity $CEOComputer -Location "CEO office/HQ/Building A"
set-adcomputer -identity $CEOComputer -PasswordNeverExpires $true
$computer = Get-ADComputer -Filter "Name -eq '$CEOComputer'"
add-adgroupmember "VIPcomputers" -members $computer

$CFOComputer = "DaMoneyman-pc"
$computer = Get-ADComputer -Filter "Name -eq '$CFOComputer'"
if($computer -eq $null){
    write-host "computer does not exist"
    New-ADComputer -Name $CFOComputer -SamAccountName $CFOComputer
}
set-adcomputer -identity $CFOComputer -Location "CEO office/HQ/Building A"
set-adcomputer -identity $CFOComputer -PasswordNeverExpires $true
$computer = Get-ADComputer -Filter "Name -eq '$CFOComputer'"
add-adgroupmember "VIPcomputers" -members $computer


$CTOComputer = "TechMan-pc"
$computer = Get-ADComputer -Filter "Name -eq '$CTOComputer'"
if($computer -eq $null){
    write-host "computer does not exist"
    New-ADComputer -Name $CTOComputer -SamAccountName $CTOComputer
}
set-adcomputer -identity $CTOComputer -Location "CEO office/HQ/Building A"
set-adcomputer -identity $CTOComputer -PasswordNeverExpires $true
$computer = Get-ADComputer -Filter "Name -eq '$CTOComputer'"
add-adgroupmember "VIPcomputers" -members $computer