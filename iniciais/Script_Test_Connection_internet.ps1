#Teste de Internet
Clear
$conn = (Test-Connection www.google.com.br -Count 1 -Quiet)

if ($conn -eq "true") {
    Write-Host Internet Funcionando
}
else {
    Write-Host Internet não Funcionando
}