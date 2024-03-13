$score = 0
while ($true) {
    #willekeurig statement opzoeken
    $randomNummer = get-random -Maximum 18 
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
    #beeindig de game als je 10 gehaald hebt
    if($score -ge 10){
        write-host "je hebt er 10 goed, je hebt de opdracht goed afgesloten!"
        exit
    }
}

