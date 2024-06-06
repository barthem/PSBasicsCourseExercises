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


