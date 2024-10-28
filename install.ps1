$link = "https://github.com/chyzman/ChyzcordInstaller/releases/latest/download/ChyzcordInstaller.exe"

$outfile = "$env:TEMP\ChyzcordInstaller.exe"

Write-Output "Downloading installer to $outfile"

Invoke-WebRequest -Uri "$link" -OutFile "$outfile"

Write-Output ""

Start-Process -Wait -NoNewWindow -FilePath "$outfile"

# Cleanup
Remove-Item -Force "$outfile"
