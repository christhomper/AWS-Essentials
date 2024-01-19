<powershell>
# Install IIS Web Server role
Install-WindowsFeature -name Web-Server -IncludeManagementTools

# Start the IIS service
Start-Service -Name W3SVC

# Enable IIS service to start automatically on boot
Set-Service -Name W3SVC -StartupType Automatic

# Create a simple HTML file in the IIS web root
$hostname = hostname
$Content = "<h1>Hello World from $hostname</h1>"
$Content | Out-File -FilePath C:\inetpub\wwwroot\index.html

</powershell>
