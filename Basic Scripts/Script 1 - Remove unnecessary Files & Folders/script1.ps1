Get-ChildItem "D:\PowerShell Lectures\P" -Recurse | ForEach-Object {
    if ($_.Length -eq 0) {
        Write-Output "Directory to be removed: $($_.FullName)"
        Write-Output "Size of the directory ($($_.FullName)) is $($_.Length)"
        $_.FullName | Remove-item -Force
    }
    If ($_.psiscontainer -eq $true) {
        if ((Get-ChildItem $_.FullName) -eq $null) {
            Write-Output "Directory to be removed: $($_.FullName)"
            Write-Output "Size of the directory ($($_.FullName)) is $($_.Length)"
            $_.FullName | Remove-item -Force
        }
    }
}

Get-ChildItem "D:\PowerShell Lectures\P" -Recurse | ForEach-Object {
    Write-Host "$($_.FullName)"
    Write-Host "$($_.Length)"
}
