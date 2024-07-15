function Calculate-Multiplier {
    param (
        [Parameter(Mandatory=$true)]
        [int]$number
    )

    # A breakpoint can be set here to inspect the input value
    return $number * 5
}

# Main script block
Write-Host "Starting script..."

for ($i = 1; $i -le 5; $i++) {
    $result = Calculate-Multiplier -number $i

    # Set a breakpoint here to watch changes in $result each loop iteration
    Write-Host "Multiplier result for $i : $result"
    
    if ($result -gt 10) {
        # A conditional breakpoint can be set here to trigger only if $result is greater than 10
        Write-Host "$result is greater than 10"
    }
}

Write-Host "Script completed."
