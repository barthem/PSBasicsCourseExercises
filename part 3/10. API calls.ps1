#voorbeeld GET call
Invoke-RestMethod -uri https://api.adviceslip.com/advice -Method Get |Select-Object -ExpandProperty slip |Select-Object advice


#voorbeeld van POST call met JSON body 
$uri = 'https://api.funtranslations.com/translate/pirate.json'
$headers = @{
    "User-Agent" = "MyCustomUserAgent/1.0"
    "Content-Type" = "application/json"
}

$body = @{
    text = 'Hello my good sir, im here to rob you, so give me the money.'
}

$param = @{
    uri = $uri
    method = "POST"
    body = ($body |ConvertTo-Json)
    ContentType = "application/json"
    Headers = $headers
}
$response = Invoke-RestMethod @param 

$response |Select-object -ExpandProperty contents |Select-Object translated


#voorbeeld api call met authentication 
$tenantId = "<insert tenant id here>"
$clientId = "<insert client id here>"
$clientSecret = "<insert your client secret here>"
$scope = "https://graph.microsoft.com/.default"

# Define the token endpoint
$tokenUrl = "https://login.microsoftonline.com/$tenantId/oauth2/v2.0/token"

# Set the body for the POST request
$body = @{
    grant_type    = "client_credentials"
    client_id     = $clientId
    client_secret = $clientSecret
    scope         = $scope
}

# Make the request to get the access token
$response = Invoke-RestMethod -Uri $tokenUrl -Method Post -Body $body

# Extract the access token
$accessToken = $response.access_token

# Output the access token
Write-Output "Access Token: $accessToken"



# Microsoft Graph API endpoint for listing users
$graphApiUrl = "https://graph.microsoft.com/v1.0/users"

# Set the authorization header
$headers = @{
    Authorization = "Bearer $accessToken"
    "User-Agent" = "MyCustomUserAgent/1.0"
    "Content-Type" = "application/json"
}

# Make the API call to get the list of users
$users = Invoke-RestMethod -Uri $graphApiUrl -Method Get -Headers $headers
$users.value