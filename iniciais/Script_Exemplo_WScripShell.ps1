# Exemplo WScrip Shell - Nwe Object
$wshel = New-Object -ComObject WScrip.Shell

$wshel | Get-Member

$wshel.Popup("Curso de powershell")