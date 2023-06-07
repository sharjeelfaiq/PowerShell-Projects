Get-ChildItem "D:\" -Recurse | ForEach-Object {
    if ($_.Length -eq 0) {
        Write-Output "Removing Empty Files $($_.FullName)"
        $_.FullName | Remove-item -Force
    }
    If ($_.psiscontainer -eq  $true) {
        if ((Get-ChildItem $_.FullName) -eq $null) {
            Write-Output "Removind Empty Folder $($_.FullName)"
            $_.FullName | Remove-item -Force
        }
    }
}