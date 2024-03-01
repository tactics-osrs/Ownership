# Function to take ownership and grant permissions
function Set-Permissions {
    param($path)
    # Check if the path exists
    if (Test-Path $path) {
        # Try to take ownership and change permissions
        try {
            takeown /F $path /R /D Y
            icacls $path /grant "$env:USERNAME":(F) /T /C /Q
            Write-Host "Ownership taken and full control permissions granted for $path"
        } catch {
            Write-Host "An error occurred: $_"
            Start-Process
        }
    } else {
        Write-Host "The path $path does not exist. Please enter a valid path."
        Start-Process
    }
}

# Function to start the process
function Start-Process {
    # Prompt for a file or folder path
    $path = Read-Host "Path of file/folder you want to take full ownership of"
    Set-Permissions -path $path
}

# Start the process
Start-Process
