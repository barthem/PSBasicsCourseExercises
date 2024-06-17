try {
    # Attempt to retrieve a specific user from Active Directory
    $username = "henkdehenkster"
    $user = Get-ADUser -Identity $username -Properties *

    # Output some details about the user
    Write-Host "User $($user.SamAccountName) found. Display name: $($user.DisplayName)"
}
catch [Microsoft.ActiveDirectory.Management.ADIdentityNotFoundException] {
    # Handle the case where the specified user does not exist
    Write-Host "Error: User not found - $username"
}
catch {
    # Handle other generic exceptions
    Write-Host "An unexpected error occurred: $($_.Exception.Message)"
}



##################voorbeeld 2#################### 

try{ 
    $processName = "powreshell"
    #verander een non-terminating error naar een terminating error
    get-process $processName -erroraction stop 

}catch{
    write-host "het process $processName bestaat niet. "
}

##################voorbeeld 3#################### 

try {
    throw "dit is een terminating error die ik zelf genereer."
}
catch {
    Write-Host "An unexpected error occurred: $($_.Exception.Message)"
}


