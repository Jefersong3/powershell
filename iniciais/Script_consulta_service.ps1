# Consultar um serviço do windows
$serv = Get-Service -Name EFS
if ($serv.Status -eq "Running") {
    Write-Host Serviço em Execução
}
else {
    Write-Host Serviço Parado    
}