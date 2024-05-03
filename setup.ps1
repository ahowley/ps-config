[Console]::OutputEncoding = [Text.Encoding]::UTF8
winget install JanDeDobbeleer.OhMyPosh -s winget
Set-Alias -Name oh-my-posh "$env:USERPROFILE\AppData\Local\Programs\oh-my-posh\bin\oh-my-posh.exe"
Add-Content -Path "$PSHOME\Profile.ps1" -Value "[Console]::OutputEncoding = [Text.Encoding]::UTF8"
Add-Content -Path "$PSHOME\Profile.ps1" -Value "Set-Alias -Name oh-my-posh `"`$env:USERPROFILE\AppData\Local\Programs\oh-my-posh\bin\oh-my-posh.exe`""
Add-Content -Path "$PSHOME\Profile.ps1" -Value "oh-my-posh init pwsh --config `"https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/gruvbox.omp.json`" | Invoke-Expression"
Add-Content -Path "$PSHOME\Profile.ps1" -Value "clear"
oh-my-posh font install --user meslo
. $PSHOME\Profile.ps1