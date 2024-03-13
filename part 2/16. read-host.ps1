# Prompt the user for their name
$name = Read-Host "Please enter your name:"

# Display a greeting message using the input name
Write-Host "Hello, $name! Welcome to the PowerShell example."

# Prompt the user for their age
$age = Read-Host "How old are you?"

# Calculate the year of birth based on the provided age
$currentYear = Get-Date -Format "yyyy"
$yearOfBirth = [int]$currentYear - $age

# Display the calculated year of birth
Write-Host "$name, you were born in the year $yearOfBirth."

Write-host  “$naam werkt bij OGD. Zijn/haar functie  binnen ogd is $functie”
