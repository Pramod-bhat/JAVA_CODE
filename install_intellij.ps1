# Save this script as `install_intellij.ps1` 
#commenting this line create a PR

# Define IntelliJ IDEA version and download URL
$version = "2023.2"  # Replace with the desired version
$intellij_url = "https://download.jetbrains.com/idea/ideaIC-$version.exe"

# Download IntelliJ IDEA installer
Write-Host "Downloading IntelliJ IDEA..."
$output_path = "$env:TEMP\ideaIC-$version.exe"
Invoke-WebRequest -Uri $intellij_url -OutFile $output_path

# Silent installation parameters
$arguments = "/S"

# Install IntelliJ IDEA
Write-Host "Installing IntelliJ IDEA..."
Start-Process -FilePath $output_path -ArgumentList $arguments -Wait

# Cleanup
Write-Host "Cleaning up..."
Remove-Item -Path $output_path

Write-Host "IntelliJ IDEA installation complete."
