#---------------
# This script can be set to run as a scheduled task.
# The purpose is to stop an offending process when it blocks network connectivity.
# This acts as a workaround until we can update to RDS 2012.

#This pings the firewall and returns a 'true' or 'false' response.
$ping = test-connection 192.168.1.1 -count 1 -quiet
$ProcessActive = Get-Process -Name OUTLOOK -ErrorAction SilentlyContinue

#If the network is down the offending process is stopped. If network is up do nothing.

if ($ping -eq $false -and $ProcessActive -ne $null)
{
    Get-Date | Out-File C:\powershell\log.txt -Append
    Stop-Process -Name OUTLOOK -Force -Verbose -PassThru | Out-File C:\powershell\log.txt -Append
}
