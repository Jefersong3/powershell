# Exemplo Jobs

WorkFlow workflowDemorado
{
while(1)
    {
    (Get-Date).ToString() + "Script Demorado"
    Start-Sleep -Seconds 2
    }
}

$wfJob = workflowDemorado -AsJob
$wfJob

Receive-Job $wfJob
Suspend-Job $wfJob -Force
Stop-Job $wfJob
Resume-Job