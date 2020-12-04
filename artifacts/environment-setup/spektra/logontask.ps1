Start-Transcript -Path C:\WindowsAzure\Logs\logontasklogs.txt -Append
cd 'C:\LabFiles\synapse-ws-L300\artifacts\environment-setup\automation'

#Environment setup script
./01-environment-setup.ps1

#Validation scripts
./07-environment-validate.ps1

<#./07-01-environment-poc-pre-validate.ps1
./07-02-environment-poc-validate.ps1 #>

Unregister-ScheduledTask -TaskName "Setup" -Confirm:$false
Stop-Transcript
