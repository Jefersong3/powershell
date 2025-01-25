# Script com Regex
$email = Read-Host Qual o seu email ?
$regex = "^[a-z]+\.[a-z]+@contoso.com$"

if ($email -notmatch $regex) {
    Write-Host "Endereço de email incorreto $email"
    Exit
}

Write-Host Email correto!