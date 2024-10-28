# Set the URL of the wallpaper image and temporary file path
$wallpaperUrl = "https://www.wikipedia.org/portal/wikipedia.org/assets/img/Wikipedia-logo-v2.png"
$tempFilePath = "$env:TEMP\wallpaper.jpg"

# Download the wallpaper image
Invoke-WebRequest -Uri $wallpaperUrl -OutFile $tempFilePath

# Set the downloaded image as the desktop wallpaper
Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop' -Name Wallpaper -Value $tempFilePath

# Refresh the wallpaper setting to apply changes immediately
[System.Runtime.InteropServices.Marshal]::ReleaseComObject([System.Runtime.InteropServices.Marshal]::CreateAggregatedObject((New-Object -ComObject Shell.Application), New-Object System.__ComObject))
