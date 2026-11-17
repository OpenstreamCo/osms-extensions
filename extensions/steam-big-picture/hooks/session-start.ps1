# Corre en la sesión de Windows del usuario de la sesión. Solo si Steam está instalado.
$steam = (Get-ItemProperty 'HKCU:\Software\Valve\Steam' -ErrorAction SilentlyContinue).SteamExe
if (-not $steam) { $steam = (Get-ItemProperty 'HKLM:\SOFTWARE\WOW6432Node\Valve\Steam' -ErrorAction SilentlyContinue).InstallPath }
if (-not $steam) { exit 0 }
if ((Get-Item $steam -ErrorAction SilentlyContinue) -is [System.IO.DirectoryInfo]) { $steam = Join-Path $steam 'steam.exe' }
if (-not (Test-Path $steam)) { exit 0 }
# Con Steam abierto o sin abrir: steam.exe con la URL abre (o arranca en) Big Picture.
Start-Process -FilePath $steam -ArgumentList 'steam://open/bigpicture'
exit 0
