# Prompt for a file or folder path
$path = Read-Host "Path of file/folder you want to take full ownership of"

# Check if the path exists
if (Test-Path $path) {
    # Try to take ownership and change permissions
    try {
        takeown /F $path /R /D Y
        icacls $path /grant "$env:USERNAME":(F) /T /C /Q
        Write-Host "Ownership taken and full control permissions granted for $path"
    } catch {
        Write-Host "An error occurred: $_"
    }
} else {
    Write-Host "The path $path does not exist. Please enter a valid path."
}
