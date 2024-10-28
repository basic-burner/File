# Set the URL of the wallpaper image and temporary file path
$wallpaperUrl = "https://raw.githubusercontent.com/basic-burner/File/refs/heads/main/redeye.jfif"
$tempFilePath = "$env:TEMP\wallpaper.jfif"

# Download the wallpaper image
Invoke-WebRequest -Uri $wallpaperUrl -OutFile $tempFilePath

# Set the downloaded image as the desktop wallpaper
Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop' -Name Wallpaper -Value $tempFilePath
