$employees = Import-Csv -Path "employees.csv"

#dit weergeeft alles en weergeeft het in de console..  
$employees | select-object *

# Opdracht 1: Filter $employees met where-object zodat je enkel alle medewerkers ziet die ouder zijn dan 40, schrijf deze output naar de console
# Opdracht 2: Filter $employees met where-object zodat je enkel de volgende mensen ziet
# Zijn vrouw
# Ouder dan 55
# Schrijf de output weg naar de console
# Bonus opdracht: Filter zodat je enkel alle mensen ziet met een A in hun naam!
