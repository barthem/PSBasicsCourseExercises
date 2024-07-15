# Define an array of numbers
$numbers = 1..10

# Function to calculate sum of an array
function Get-SumOfArray {
    param([int[]]$nums)
    $sum = 0

    "starting to calculate the sum of the int array"
    foreach ($num in $nums) {
        $sum += $num
        # Possible breakpoint: Inspect the sum during each iteration
    }
    #return the sum
    return $sum
}

# Function to calculate average
function Get-AverageOfArray {
    param([int[]]$nums)
    $sum = Get-SumOfArray -nums $nums
    $average = $sum / $nums.Count
    # Possible breakpoint: Inspect the average calculation
    return $average
}

# Calculate the sum of numbers
$totalSum = Get-SumOfArray -nums $numbers
Write-Host "The sum of numbers is: $totalSum"

# Calculate the average of numbers
$average = Get-AverageOfArray -nums $numbers
Write-Host "The average of numbers is: $average"