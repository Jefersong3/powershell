# Exemplo sessão persistente usando Enter-PSSession Invole-Command e Jobs

Clear-Host

#variavel
$s = New-PSSession -Name WS22DC01

Invoke-Command -Session $s -ScriptBlock {$i = 0
While($true)
{
$i++
Write-Host "Vou contar até $1"
sleep 1
if ($i -ge 1000) {break}
}} -AsJob -JobName LongoTrabalho


#Comandos
Get-Command -Name *PSSession
Disconnect-PSSession $s
Receive-PSSession $s
Get-PSSession
Get-PSSession | Remove-PSSession

Get-Job -Name LongoTrabalho | Receive-Job
Get-Job -Name LongoTrabalho | Stop-Job

