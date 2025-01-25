# Exemplo do comando FOR
Clear-Host

for ($var=1; $var -le 255; $var++){
    Write-Host 192.168.0.$var
}     