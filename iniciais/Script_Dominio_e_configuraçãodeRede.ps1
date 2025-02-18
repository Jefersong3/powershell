#Dominio e configuração de IP
Clear-Host

#Buscando configurações
Get-NetIPConfiguration

#IP Fixo
New-NetIPAddress 172.16.0.103 -InterfaceAlias Ethernet -DefaultGateway 172.16.0.1 -AddressFamily IPv4 -PrefixLength 24
Set-DnsClientServerAddress -InterfaceAlias Ethernet -ServerAddresses 172.16.0.1

#DHCP
Set-NetIPInterface -InterfaceAlias Ethernet -Dhcp Enabled
Set-DnsClientServerAddress -InterfaceAlias Ethernet -ResetServerAddresses

#Adicionar maquina no Dominio
Add-Computer -ComputerName WS22TS01 -DomainName ensino.local
 



