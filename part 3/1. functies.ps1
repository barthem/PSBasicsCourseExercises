#declareer een functie, en roep hem aan
function get-process {
    Write-Output "Hello, World!"
}

get-process

#simpele functie met input parameters, en die een output parameter geeft
function get-numbersAddedUp {
    param (
        $eersteGetal,
        $tweedeGetal
    )
    $resultaat = $eersteGetal + $tweedeGetal
    return $resultaat
}

get-numbersAddedUp -eersteGetal 55 -tweedeGetal 66

function get-dayoftheweek{
    $dayoftheweek = get-date |select-object -ExpandProperty dayofweek

    return $dayoftheweek 

    #deze code wordt nooit uitgevoerd omdat return ervoor aangeroepen wordt.
    write-output "Old MacDonald had a farm, E-I-E-I-O!
    And on his farm he had a cow, E-I-E-I-O!
    With a moo-moo here and a moo-moo there,
    Here a moo, there a moo,
    Everywhere a moo-moo,
    Old MacDonald had a farm, E-I-E-I-O!    
    "
}

get-dayoftheweek

#powershell zal een fout geven als een andere kleur opgegeven wordt dan de validate set. 
function Get-FavoriteColor {
    param (
        [Parameter(Mandatory=$true)]
        [ValidateSet("Red", "Blue", "Green", "black")]
        [string] $Color
    )
    Write-Output "Your favorite color is $Color."
}

# Example usage:
Get-FavoriteColor -Color "black"


