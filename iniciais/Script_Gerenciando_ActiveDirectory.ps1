#Gerenciando ActiveDirectory

Get-Command -Module ActiveDirectory

New-ADUser teste.teste
Get-ADUser jeferson.luiz -Properties LastLogonDate
Get-ADUser -Filter * | where {$_.enabled -eq $false}
Get-ADUser -Filter * | fl name
Get-ADUser -Filter * -Properties * | Export-Csv C:\Users\Administrator\Documents\listuser.csv
Get-ADUser -Filter * -Properties * | select -Property GivenName, DysplayName

