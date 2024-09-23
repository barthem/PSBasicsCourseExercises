# Function to generate a random password
function Get-RandomPassword {
    param (
        [int]$length = 32
    )
    # Generate a random password of a specified length using ASCII characters (33-126)
    # Convert the result to a secure string to meet password requirements
    return -join ((33..126) | Get-Random -Count $length | ForEach-Object { [char]$_ }) | ConvertTo-SecureString -Force -AsPlainText
}

# Function to retrieve random users from the API
function Get-RandomUsers {
    param (
        [int]$count = 1000
    )
    # API URL to get random users (with specific nationalities and no additional info)
    $url = "https://randomuser.me/api/?results=$count&noinfo&nat=gb,fr,us,nl"
    
    # Make an HTTP GET request to fetch random user data
    $result = Invoke-RestMethod -Uri $url -Method Get
    
    # Return only the 'results' part of the response which contains the user data
    return $result.results
}

# Main script execution

# Fetch 1000 random users from the API using the Get-RandomUsers function
$randomUsers = Get-RandomUsers -count 1000 

# Iterate through each random user and create a corresponding AD user
$randomUsers | ForEach-Object  {
    
    # Construct a hash table ($splat) with user properties for the New-ADUser cmdlet
    $splat = @{
        name                   = $_.name.first + " " + $_.name.last # Full name
        UserPrincipalName      = ($_.name.first + "." + $_.name.last).replace(" ", "") # UserPrincipalName in "first.last" format
        displayname            = $_.name.first + " " + $_.name.last # Display name
        givenname              = $_.name.first # Given name (first name)
        surname                = $_.name.last # Surname (last name)
        office                 = $_.location.country # Office location (user's country)
        EmailAddress           = $_.email # Email address
        OfficePhone            = $_.phone # Office phone number
        MobilePhone            = $_.cell # Mobile phone number
        AccountPassword        = Get-RandomPassword # Generate a random password for the account
        Enabled                = [bool](Get-Random -Minimum 0 -Maximum 2) # Randomize whether the account is enabled or disabled
    }

    # Create a new Active Directory user with the specified properties
    New-ADUser @splat

    # Output a message to indicate the user was created successfully
    Write-Host "Created user: $($_.name.first + " " + $_.name.last)"
}
