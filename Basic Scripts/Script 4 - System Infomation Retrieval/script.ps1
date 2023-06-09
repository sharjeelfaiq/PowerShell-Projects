# Get operating system version
$osVersion = (Get-CimInstance -Class Win32_OperatingSystem).Caption
$osVersion

Get-CimInstance -Class Win32_OperatingSystem | Format-List *

# Get computer name
$computerName = $env:COMPUTERNAME
$computerName

# Get processor information
$processorName = (Get-CimInstance -Class Win32_Processor).Name
$processorManufacturer = (Get-CimInstance -Class Win32_Processor).Manufacturer
$processorName
$processorManufacturer

Get-CimInstance -Class Win32_ComputerSystemProcessor | Format-List *
Get-CimInstance -Class Win32_Processor | Format-List

# Get availabe disk space
$disk = Get-CimInstance -Class Win32_LogicalDisk -Filter "DeviceID='C:'"
$availableDiskSpace = "{0:N2} GB" -f ($disk.FreeSpace / 1GB)
$availableDiskSpace

Write-Host "Operating System Version: $osVersion"
Write-Host "Computer Name: $computerName"
Write-Host "Processor Name: $processorName"
Write-Host "Processor Manufacturer: $processorManufacturer"
Write-Host "Available Disk Space: $availableDiskSpace"