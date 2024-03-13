#get-date heeft  15 properties
get-date |Get-Member -MemberType Property

#stel ik wil ENKEL de waarde van year hebben, de get-date tussen haakjes creert eerst een DateTime object
#vervolgens vraag je met de <object>.Year waarde de Year property op
(Get-Date).Year

#de property value van de dag
(Get-Date).day

# dit zou je ook met een parameter kunnen doen, returnt hetzelfde.
Get-date -format "yyyy"
Get-date -format "dd"	

