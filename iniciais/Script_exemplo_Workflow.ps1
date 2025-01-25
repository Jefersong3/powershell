# Workflow - Hello World

workflow tipo-cmdlet
{
Write-Output "Hello World"
}

workflow iniciar-editores {
parallel {
Start-Process Notepad
sleep 5
Start-Process wordpad
}
}