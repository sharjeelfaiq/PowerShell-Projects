# Create a new directory
$directoryPath = "D:\ABC.doc"
New-Item -Path $directoryPath -ItemType File

# Copy a file to a new location
$sourceFile = "D:\ABC.txt"
$destinationFile = "D:\ABC"
Copy-Item -Path $sourceFile -Destination $destinationFile

# Move a file to a new location
$sourceFile = "D:\ABC.doc"
$destinationFile = "D:\ABC"
Move-Item -Path $sourceFile -Destination $destinationFile

# Delete a file
$fileToDelete = "D:\ABC\ABC.doc"
Remove-Item -Path $fileToDelete

# Delete a directory and its contents
$directoryToDelete = "D:\ABC"
Remove-Item -Path $directoryToDelete -Recurse