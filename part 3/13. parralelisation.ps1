#basis powershell foreach parralel loop.
1..20 | ForEach-Object -Parallel {
    Start-Sleep -Seconds 1
    "Processed $_ in parallel"
}


# probleem 1: variabelen dat in het hoofdscript bestaat
$mainscriptVariabelen = "Dit is een geweldige variabelen!"

#hier kunnen we de variabel niet gebruiken. 
1..5 | ForEach-Object -Parallel {
    # ik kan het variabelen niet accessen in een paralel block.
    Write-Output "Inside parallel block, mainVar: $mainscriptVariabelen"
}

# hier kunnen we hem wel accessen
1..5 | ForEach-Object -Parallel {
    # ik moet de $using: scope ervoor zetten om deze te kunnen accessen
    Write-Output "Inside parallel block, mainVar: $using:mainscriptVariabelen"
}

#probleem 2: gebruik van functies binnen thread

# Define a function in the main runspace
function Get-Greeting {
    param ($Name)
    return "Hello, $Name"
}

# Call this function in the main runspace (this works)
Get-Greeting -Name "Alice"

"Alice", "Bob", "Charlie" | ForEach-Object -Parallel {
    # Attempting to call the function from the main runspace (this will fail)
    $greeting = Get-Greeting -Name $_
    $greeting
}

# Get the function's definition *as a string*
$funcDef = ${function:Get-Greeting}.ToString()

"Alice", "Bob", "Charlie" | ForEach-Object -Parallel {
    # recreate the function from the variable
    ${function:Get-Greeting} = $using:funcDef

    $greeting = Get-Greeting -Name $_
    $greeting
}

#probleem 3: inefficienty bij kleine taken

# Define the task: Get processes and count how many are using more than 50MB of memory
$processes = Get-Process

# Measure the execution time without -Parallel
Measure-Command {
    $highMemoryProcesses = $processes | ForEach-Object {
        if ($_.WorkingSet64 -gt 50MB) {
            $_
        }
    }
    $highMemoryProcesses.Count
}

# Measure the execution time with -Parallel
 Measure-Command {
    $highMemoryProcesses = $processes | ForEach-Object -Parallel {
        if ($_.WorkingSet64 -gt 50MB) {
            $_
        }
    }
    $highMemoryProcesses.Count
}

# Output the results
"Time without -Parallel: $($withoutParallel.TotalMilliseconds) ms"
"Time with -Parallel: $($withParallel.TotalMilliseconds) ms"
