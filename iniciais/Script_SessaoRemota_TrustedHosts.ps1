Clear-Host

#Set-Item WSMan:\localhost\Client\TrustedHosts 'WS22DC01' -Concatenate
#Get-Item WSMan:\localhost\Client\TrustedHosts

$cred = Get-Credential esino\administrator
$Servers = New-PSSession -ComputerName (Get-Content C:\Users\Administrator\Documents\Scripts_Powershell\Servers.txt) -Credential $cred

Invoke-Command $Servers { Get-Service }

#Test-Connection WS22DC01
#New-PSSession -ComputerName WS22DC01 -Credential $cred
