param([String]$steamcmd_dir="steamcmd")

#    Source Dedicated Server Installer  Copyright (C) 2017 Distroir
#    This program comes with ABSOLUTELY NO WARRANTY; for details type `show w'.
#    This is free software, and you are welcome to redistribute it
#    under certain conditions; type `show c' for details.

#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.

#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.

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