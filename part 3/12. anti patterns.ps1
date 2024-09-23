


### Anti-pattern: gebruik += in arrays ###

# Generate a range of larger numbers 
$numbers = 0..10000

#de anti pattern
Measure-Command{
    $array = @()
    foreach ($i in $numbers) {
        $array += $i
    }
}


# Betere aanpak, gebruik arraylists
Measure-Command{
    $array = New-Object System.Collections.ArrayList
    foreach ($i in $numbers) {
        [void]$array.Add($i)
    }   
}

# of als je wel arrays wilt gebruiken 
Measure-Command{
    $array = @()
    $array = $numbers |foreach-object {
        $_
    }
}


### Anti-pattern: overbodig write-host ###
$numbers = 0..10000

$antipattern =  Measure-Command{
    $array = New-Object System.Collections.ArrayList
    foreach ($i in $numbers) {
        [void]$array.Add($i)
        write-output  "wrote $i to array!" 
    }   
}

$goodpattern =  Measure-Command{
    $array = New-Object System.Collections.ArrayList
    foreach ($i in $numbers) {
        [void]$array.Add($i)
    }   
}

write-host "tijd met write-host:  $($antipattern.TotalMilliseconds)"
write-host "tijd zonder write-host: $($goodpattern.TotalMilliseconds)"