cd C:\
echo "Files downloading."

mkdir C:\SoftwareDrivers\

PowerShell (New-Object System.Net.WebClient).DownloadFile('https://michel3.stackstorage.com/index.php/s/EBF6WFGXPPb4grj/download','main.zip')
powershell.exe -nologo -noprofile -command "& { Add-Type -A 'System.IO.Compression.FileSystem'; [IO.Compression.ZipFile]::ExtractToDirectory('main.zip', 'C:\');}"

DEL /Q C:\main.zip
