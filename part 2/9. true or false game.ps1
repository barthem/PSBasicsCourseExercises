$score = 0
while ($true) {
    #willekeurig statement opzoeken
    $randomNummer = get-random -Maximum 100 
    write-host "Wat is de uitkomst van de volgende statement:"
    switch ($randomNummer) {
        0 { 
            write-host "400 - 300 -lt 150" -ForegroundColor Red
            $antwoord = 400 - 300 -lt 150
        }
        1 { 
            write-host '"kat" -ne "hond"' -ForegroundColor Red
            $antwoord = "kat" -ne "hond"
        }
        2 { 
            write-host '5 * 5 -le 25' -ForegroundColor Red
            $antwoord = 5 * 5 -le 25
        }
        3 { 
            write-host '"123" -eq 123' -ForegroundColor Red
            $antwoord = "123" -eq 123
        }
        4 { 
            write-host '"hello" -ge "hello" ' -ForegroundColor Red
            $antwoord = "hello" -ge "hello"
        }
        5 { 
            write-host '321 -lt 123' -ForegroundColor Red
            $antwoord = 321 -lt 123
        }
        6 { 
            write-host '13 -ge 37' -ForegroundColor Red
            $antwoord = 13 -ge 37
        }
        7 { 
            write-host '213-233 -eq 0' -ForegroundColor Red
            $antwoord = 213 - 233 -eq 0
        }
        8 { 
            write-host '213-233 -le 0' -ForegroundColor Red
            $antwoord = 213 - 233 -le 0
        }
        9 { 
            write-host '"ca via" -eq "cavia"'  -ForegroundColor Red
            $antwoord = "ca via" -eq "cavia"
        }
        10 { 
            write-host '10*10*10 -ne 100' -ForegroundColor Red
            $antwoord = 10*10*10 -ne 100
        }
        11 {
            write-host '1 -ne $true' -ForegroundColor Red
            $antwoord = 1 -ne $true
        }
        12 {
            write-host '0 -eq $false' -ForegroundColor Red
            $antwoord = 0 -eq $false
        }
        13 {
            Write-Host '("apple", "orange").Count -eq 2' -ForegroundColor Red
            $antwoord = ("apple", "orange").Count -eq 2
        }
        14 {
            Write-Host '("blue", "green", "red") -contains "yellow"' -ForegroundColor Red
            $antwoord = ("blue", "green", "red") -contains "yellow"
        }
        15 {
            Write-Host '(10 -lt 20) -and (30 -gt 25)' -ForegroundColor Red
            $antwoord = (10 -lt 20) -and (30 -gt 25)
        }
        16 {
            Write-Host '(5 + 5) -eq 10' -ForegroundColor Red
            $antwoord = (5 + 5) -eq 10
        }
        17 {
            Write-Host '("dog", "cat", "fish")[1] -eq "cat"' -ForegroundColor Red
            $antwoord = ("dog", "cat", "fish")[1] -eq "cat"
        }
        18 {
            Write-Host '(10 -eq 10) -or (20 -eq 30)' -ForegroundColor Red
            $antwoord = (10 -eq 10) -or (20 -eq 30)
        }
        19 {
            Write-Host '(10 -gt 5) -and (5 -lt 3)' -ForegroundColor Red
            $antwoord = (10 -gt 5) -and (5 -lt 3)
        }
        20 {
            Write-Host '("apple", "banana", "orange") -contains "banana"' -ForegroundColor Red
            $antwoord = ("apple", "banana", "orange") -contains "banana"
        }
        21 {
            Write-Host '(10 * 2) -eq 20' -ForegroundColor Red
            $antwoord = (10 * 2) -eq 20
        }
        22 {
            Write-Host '("apple", "banana").Count -eq 3' -ForegroundColor Red
            $antwoord = ("apple", "banana").Count -eq 3
        }
        23 {
            Write-Host '("dog", "cat", "fish")[2] -eq "cat"' -ForegroundColor Red
            $antwoord = ("dog", "cat", "fish")[2] -eq "cat"
        }
        24 {
            Write-Host '(100 -lt 200) -and (500 -gt 300)' -ForegroundColor Red
            $antwoord = (100 -lt 200) -and (500 -gt 300)
        }
        25 {
            Write-Host '("apple", "orange", "grape") -contains "banana"' -ForegroundColor Red
            $antwoord = ("apple", "orange", "grape") -contains "banana"
        }
        26 {
            Write-Host '(2 * 3 * 4) -eq 24' -ForegroundColor Red
            $antwoord = (2 * 3 * 4) -eq 24
        }
        27 {
            Write-Host '("red", "green", "blue") -notcontains "yellow"' -ForegroundColor Red
            $antwoord = ("red", "green", "blue") -notcontains "yellow"
        }
        28 {
            Write-Host '(15 -eq 10) -or (20 -eq 30)' -ForegroundColor Red
            $antwoord = (15 -eq 10) -or (20 -eq 30)
        }
        29 {
            Write-Host '("apple", "banana", "cherry").Count -gt 2' -ForegroundColor Red
            $antwoord = ("apple", "banana", "cherry").Count -gt 2
        }
        30 {
            Write-Host '("red", "green", "blue")[0] -eq "red"' -ForegroundColor Red
            $antwoord = ("red", "green", "blue")[0] -eq "red"
        }
        31 {
            Write-Host '(10 -ne 5) -and (20 -gt 15)' -ForegroundColor Red
            $antwoord = (10 -ne 5) -and (20 -gt 15)
        }
        32 {
            Write-Host '(10 * 2) -ne 21' -ForegroundColor Red
            $antwoord = (10 * 2) -ne 21
        }
        33 {
            Write-Host '(100 -le 200) -and (500 -ge 300)' -ForegroundColor Red
            $antwoord = (100 -le 200) -and (500 -ge 300)
        }
        34 {
            Write-Host '("red", "green", "blue") -contains "blue"' -ForegroundColor Red
            $antwoord = ("red", "green", "blue") -contains "blue"
        }
        35 {
            Write-Host '(2 * 3 * 4) -ne 23' -ForegroundColor Red
            $antwoord = (2 * 3 * 4) -ne 23
        }
        36 {
            Write-Host '("apple", "banana", "cherry").Count -lt 4' -ForegroundColor Red
            $antwoord = ("apple", "banana", "cherry").Count -lt 4
        }
        37 {
            Write-Host '(10 -eq 10) -and (20 -eq 30)' -ForegroundColor Red
            $antwoord = (10 -eq 10) -and (20 -eq 30)
        }
        38 {
            Write-Host '("apple", "banana", "cherry").Count -gt 1' -ForegroundColor Red
            $antwoord = ("apple", "banana", "cherry").Count -gt 1
        }
        39 {
            Write-Host '(10 -ne 5) -or (20 -gt 25)' -ForegroundColor Red
            $antwoord = (10 -ne 5) -or (20 -gt 25)
        }
        40 {
            Write-Host '(5 + 5) -eq 11' -ForegroundColor Red
            $antwoord = (5 + 5) -eq 11
        }
        41 {
            Write-Host '("apple", "banana").Count -eq 2' -ForegroundColor Red
            $antwoord = ("apple", "banana").Count -eq 2
        }
        42 {
            Write-Host '("dog", "cat", "fish")[0] -eq "dog"' -ForegroundColor Red
            $antwoord = ("dog", "cat", "fish")[0] -eq "dog"
        }
        43 {
            Write-Host '(100 -lt 200) -or (500 -lt 300)' -ForegroundColor Red
            $antwoord = (100 -lt 200) -or (500 -lt 300)
        }
        44 {
            Write-Host '("apple", "orange", "grape") -contains "orange"' -ForegroundColor Red
            $antwoord = ("apple", "orange", "grape") -contains "orange"
        }
        45 {
            Write-Host '(2 * 3 * 4) -eq 25' -ForegroundColor Red
            $antwoord = (2 * 3 * 4) -eq 25
        }
        46 {
            Write-Host '("red", "green", "blue") -notcontains "purple"' -ForegroundColor Red
            $antwoord = ("red", "green", "blue") -notcontains "purple"
        }
        47 {
            Write-Host '(15 -eq 10) -and (20 -eq 20)' -ForegroundColor Red
            $antwoord = (15 -eq 10) -and (20 -eq 20)
        }
        48 {
            Write-Host '("apple", "banana", "cherry").Count -lt 5' -ForegroundColor Red
            $antwoord = ("apple", "banana", "cherry").Count -lt 5
        }
        49 {
            Write-Host '(10 * 2) -eq 19' -ForegroundColor Red
            $antwoord = (10 * 2) -eq 19
        }
        50 {
            Write-Host '(100 -le 200) -or (500 -ge 300)' -ForegroundColor Red
            $antwoord = (100 -le 200) -or (500 -ge 300)
        }
        51 {
            Write-Host '("red", "green", "blue")[1] -eq "green"' -ForegroundColor Red
            $antwoord = ("red", "green", "blue")[1] -eq "green"
        }
        52 {
            Write-Host '(10 -ne 5) -and (20 -lt 30)' -ForegroundColor Red
            $antwoord = (10 -ne 5) -and (20 -lt 30)
        }
        53 {
            Write-Host '(10 * 2) -eq 20' -ForegroundColor Red
            $antwoord = (10 * 2) -eq 20
        }
        54 {
            Write-Host '("dog", "cat", "fish").Count -eq 3' -ForegroundColor Red
            $antwoord = ("dog", "cat", "fish").Count -eq 3
        }
        55 {
            Write-Host '("red", "green", "blue") -contains "yellow"' -ForegroundColor Red
            $antwoord = ("red", "green", "blue") -contains "yellow"
        }
        56 {
            Write-Host '(2 * 3 * 4) -ne 25' -ForegroundColor Red
            $antwoord = (2 * 3 * 4) -ne 25
        }
        57 {
            Write-Host '(10 -ne 5) -or (20 -eq 20)' -ForegroundColor Red
            $antwoord = (10 -ne 5) -or (20 -eq 20)
        }
        58 {
            Write-Host '(5 + 5) -eq 10' -ForegroundColor Red
            $antwoord = (5 + 5) -eq 10
        }
        59 {
            Write-Host '("apple", "banana", "cherry").Count -ge 3' -ForegroundColor Red
            $antwoord = ("apple", "banana", "cherry").Count -ge 3
        }
        60 {
            Write-Host '(100 -lt 200) -and (500 -gt 300)' -ForegroundColor Red
            $antwoord = (100 -lt 200) -and (500 -gt 300)
        }
        61 {
            Write-Host '("red", "green", "blue") -contains "green"' -ForegroundColor Red
            $antwoord = ("red", "green", "blue") -contains "green"
        }
        62 {
            Write-Host '(2 * 3 * 4) -eq 24' -ForegroundColor Red
            $antwoord = (2 * 3 * 4) -eq 24
        }
        63 {
            Write-Host '("dog", "cat", "fish")[2] -eq "fish"' -ForegroundColor Red
            $antwoord = ("dog", "cat", "fish")[2] -eq "fish"
        }
        64 {
            Write-Host '(15 -eq 10) -or (20 -eq 20)' -ForegroundColor Red
            $antwoord = (15 -eq 10) -or (20 -eq 20)
        }
        65 {
            Write-Host '("apple", "banana").Count -lt 3' -ForegroundColor Red
            $antwoord = ("apple", "banana").Count -lt 3
        }
        66 {
            Write-Host '(10 * 2) -ne 21' -ForegroundColor Red
            $antwoord = (10 * 2) -ne 21
        }
        67 {
            Write-Host '(100 -le 200) -or (500 -eq 500)' -ForegroundColor Red
            $antwoord = (100 -le 200) -or (500 -eq 500)
        }
        68 {
            Write-Host '("red", "green", "blue")[0] -eq "red"' -ForegroundColor Red
            $antwoord = ("red", "green", "blue")[0] -eq "red"
        }
        69 {
            Write-Host '(10 -ne 5) -and (20 -lt 25)' -ForegroundColor Red
            $antwoord = (10 -ne 5) -and (20 -lt 25)
        }
        70 {
            Write-Host '(10 * 2) -ne 21' -ForegroundColor Red
            $antwoord = (10 * 2) -ne 21
        }
        71 {
            Write-Host '("dog", "cat", "fish").Count -eq 4' -ForegroundColor Red
            $antwoord = ("dog", "cat", "fish").Count -eq 4
        }
        72 {
            Write-Host '("red", "green", "blue") -notcontains "yellow"' -ForegroundColor Red
            $antwoord = ("red", "green", "blue") -notcontains "yellow"
        }
        73 {
            Write-Host '(15 -eq 10) -and (20 -eq 30)' -ForegroundColor Red
            $antwoord = (15 -eq 10) -and (20 -eq 30)
        }
        74 {
            Write-Host '("apple", "banana", "cherry").Count -gt 2' -ForegroundColor Red
            $antwoord = ("apple", "banana", "cherry").Count -gt 2
        }
        75 {
            Write-Host '(10 -eq 10) -or (20 -lt 30)' -ForegroundColor Red
            $antwoord = (10 -eq 10) -or (20 -lt 30)
        }
        76 {
            Write-Host '("apple", "banana", "cherry").Count -ne 5' -ForegroundColor Red
            $antwoord = ("apple", "banana", "cherry").Count -ne 5
        }
        77 {
            Write-Host '(10 -gt 5) -and (5 -lt 10)' -ForegroundColor Red
            $antwoord = (10 -gt 5) -and (5 -lt 10)
        }
        78 {
            Write-Host '(5 * 5) -eq 25' -ForegroundColor Red
            $antwoord = (5 * 5) -eq 25
        }
        79 {
            Write-Host '("apple", "banana").Count -ge 1' -ForegroundColor Red
            $antwoord = ("apple", "banana").Count -ge 1
        }
        80 {
            Write-Host '(100 -lt 200) -or (500 -gt 500)' -ForegroundColor Red
            $antwoord = (100 -lt 200) -or (500 -gt 500)
        }
        81 {
            Write-Host '("red", "green", "blue") -contains "purple"' -ForegroundColor Red
            $antwoord = ("red", "green", "blue") -contains "purple"
        }
        82 {
            Write-Host '(2 * 3 * 4) -ne 23' -ForegroundColor Red
            $antwoord = (2 * 3 * 4) -ne 23
        }
        83 {
            Write-Host '(10 -eq 10) -and (20 -gt 15)' -ForegroundColor Red
            $antwoord = (10 -eq 10) -and (20 -gt 15)
        }
        84 {
            Write-Host '("apple", "banana", "cherry").Count -lt 4' -ForegroundColor Red
            $antwoord = ("apple", "banana", "cherry").Count -lt 4
        }
        85 {
            Write-Host '(5 * 5) -ne 30' -ForegroundColor Red
            $antwoord = (5 * 5) -ne 30
        }
        86 {
            Write-Host '(100 -le 200) -or (500 -eq 500)' -ForegroundColor Red
            $antwoord = (100 -le 200) -or (500 -eq 500)
        }
        87 {
            Write-Host '("red", "green", "blue")[2] -eq "blue"' -ForegroundColor Red
            $antwoord = ("red", "green", "blue")[2] -eq "blue"
        }
        88 {
            Write-Host '(10 -ne 5) -or (20 -lt 15)' -ForegroundColor Red
            $antwoord = (10 -ne 5) -or (20 -lt 15)
        }
        89 {
            Write-Host '(10 * 2) -ne 19' -ForegroundColor Red
            $antwoord = (10 * 2) -ne 19
        }
        90 {
            Write-Host '(100 -lt 200) -and (500 -lt 300)' -ForegroundColor Red
            $antwoord = (100 -lt 200) -and (500 -lt 300)
        }
        91 {
            Write-Host '("red", "green", "blue") -contains "yellow"' -ForegroundColor Red
            $antwoord = ("red", "green", "blue") -contains "yellow"
        }
        92 {
            Write-Host '(2 * 3 * 4) -eq 25' -ForegroundColor Red
            $antwoord = (2 * 3 * 4) -eq 25
        }
        93 {
            Write-Host '("dog", "cat", "fish")[1] -eq "cat"' -ForegroundColor Red
            $antwoord = ("dog", "cat", "fish")[1] -eq "cat"
        }
        94 {
            Write-Host '(15 -eq 10) -or (20 -eq 20)' -ForegroundColor Red
            $antwoord = (15 -eq 10) -or (20 -eq 20)
        }
        95 {
            Write-Host '("apple", "banana").Count -lt 3' -ForegroundColor Red
            $antwoord = ("apple", "banana").Count -lt 3
        }
        96 {
            Write-Host '(10 * 2) -ne 21' -ForegroundColor Red
            $antwoord = (10 * 2) -ne 21
        }
        97 {
            Write-Host '(100 -le 200) -or (500 -eq 500)' -ForegroundColor Red
            $antwoord = (100 -le 200) -or (500 -eq 500)
        }
        98 {
            Write-Host '("red", "green", "blue")[0] -eq "red"' -ForegroundColor Red
            $antwoord = ("red", "green", "blue")[0] -eq "red"
        }
        99 {
            Write-Host '(10 -ne 5) -and (20 -lt 25)' -ForegroundColor Red
            $antwoord = (10 -ne 5) -and (20 -lt 25)
        }
        100 {
            Write-Host '(10 * 2) -ne 21' -ForegroundColor Red
            $antwoord = (10 * 2) -ne 21
        }

    }
    #vragen wat je denkt dat het antwoord is
    $response = Read-Host "vul 0 als je denkt dat die false is, en een 1 als je denkt dat die true is."
    if ($response -eq "0") {
        $response = $false
    }
    elseif ($response -eq "1") {
        $response = $true
    }
    else {
        write-host -ForegroundColor black -BackgroundColor red "Dat is geen 0 of 1!"
        write-host "`n"
        continue
    }

    #checken of je het goed had
    write-host "Deze statement is: $antwoord"
    if ($response -eq $antwoord) {
        write-host -ForegroundColor white -BackgroundColor Green "Hoera! je had het goed :) "
        write-host "`n"
        $score = $score + 1
        write-host "score: $score"
    }
    else {
        write-host -ForegroundColor white -BackgroundColor red "je had het fout :("
        write-host "`n"
        write-host "score: $score"
    }

}

