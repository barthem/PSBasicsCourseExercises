#retrieve a list of 100 pokemon from the pokeAPI
write-host "ik ben een lijst met 100 pokemon aan het opvragen, dit kan een paar seconden duren..."

$pokemon = Invoke-RestMethod -Uri "https://pokeapi.co/api/v2/pokemon/?&limit=100" | 
Select-Object -ExpandProperty results |
ForEach-Object -Parallel {
    $pokeInfo = Invoke-RestMethod -Uri $_.url -SkipHttpErrorCheck -erroraction SilentlyContinue
    #convert array naar string
    $types = $pokeinfo.types.type.name -join ', '
    
    #maak een pscustomobject aan met pokemon
    [PSCustomObject]@{
        id     = $pokeinfo.id
        name   = $_.name
        height = $pokeinfo.height
        weight = $pokeinfo.weight
        type   = $types
    }
} -ThrottleLimit 25

write-host "Klaar met alle pokemon opvragen. "


#hoeveel pokemon zitten er in de array?
$pokemoncount = $pokemon.Count
write-host "er zitten $pokemoncount in de array"

#pauzeer het script tot gebruiker op enter drukt
Read-Host "druk op enter om door te gaan" | Out-Null

#dumpt alle pokemon in de chat
$pokemon

#dumpt enkel de naam van de pokemon in de chat 
$pokemon | foreach{
    $pokename = $_.name
    # write-host "name pokemon: $pokename "

    if($_.name -eq "voltorb"){
        write-host "dit is barts favorite pokemon :)"
    }    

}