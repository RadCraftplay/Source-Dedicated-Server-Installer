param([String]$steamcmd_dir="steamcmd")

#Begin operations
Write-Output "Downloading SteamCMD..."

#Variables
$url = "http://media.steampowered.com/installer/steamcmd.zip"
$output = "$env:TEMP\steamcmd.zip"
#Get time
#From this we will calculate elapsed time
$start_time = Get-Date

#Create WebClient
$wc = New-Object System.Net.WebClient
#Download file
$wc.DownloadFile($url, $output)

#Print exapsed time
Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"

#Unzip SteamCMD
Write-Output "Extracting SteamCMD"

Add-Type -AssemblyName System.IO.Compression.FileSystem
[System.IO.Compression.ZipFile]::ExtractToDirectory($output, $steamcmd_dir)

Write-Output "Done!"