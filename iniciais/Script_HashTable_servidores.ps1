#Script com Hash Table
Clear-Host
$servidores = [ordered] @{Server1="127.0.0.1";Server2="127.0.0.2";Server3="127.0.0.3"}

$servidores

#Adicionar
$servidores["Server4"]="127.0.0.4"

#Remover
$servidores.Remove("server4")

#Exibir Valores
$servidores.Values


Test-Connection $servidores.Server1