# Define the source directory or files to be backed up
$sourcePath = "D:\PowerShell Lectures"

# Define the destination directory where the backup will be stored
$destiationPath = "D:\PowerShell Lectures"

# Create a timestamp for a backup file name
$timestamp = Get-Date -Format "yyyyMMdd_HHmmss"

# Create a backup filename using the timestamp
$backupFileName = "backup_$timestamp.zip"

# Create a full path for the backup file
$backupFilePath = Join-Path -Path $destiationPath -ChildPath $backupFileName

# Compress and archive the source directory or file
Compress-Archive -Path $sourcePath -DestinationPath $backupFilePath

# Output the backup file path
Write-Host "Backup created: $backupFilePath"