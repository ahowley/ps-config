[Console]::OutputEncoding = [Text.Encoding]::UTF8
winget install JanDeDobbeleer.OhMyPosh -s winget
Set-Alias -Name oh-my-posh "$env:USERPROFILE\AppData\Local\Programs\oh-my-posh\bin\oh-my-posh.exe"
Set-Alias -Name lazygit "$env:USERPROFILE\AppData\Local\Microsoft\WinGet\Packages\JesseDuffield.lazygit_Microsoft.Winget.Source_8wekyb3d8bbwe\lazygit.exe"
Set-Alias -Name vim "nvim"
Add-Content -Path "$PSHOME\Profile.ps1" -Value "[Console]::OutputEncoding = [Text.Encoding]::UTF8"
Add-Content -Path "$PSHOME\Profile.ps1" -Value "Set-Alias -Name oh-my-posh `"`$env:USERPROFILE\AppData\Local\Programs\oh-my-posh\bin\oh-my-posh.exe`""
Add-Content -Path "$PSHOME\Profile.ps1" -Value "Set-Alias -Name lazygit `"`$env:USERPROFILE\AppData\Local\Microsoft\WinGet\Packages\JesseDuffield.lazygit_Microsoft.Winget.Source_8wekyb3d8bbwe\lazygit.exe`""
Add-Content -Path "$PSHOME\Profile.ps1" -Value "Set-Alias -Name vim `"nvim`""
Add-Content -Path "$PSHOME\Profile.ps1" -Value "oh-my-posh init pwsh --config `"https://raw.githubusercontent.com/ahowley/ps-config/main/gruvbox.json`" | Invoke-Expression"
Add-Content -Path "$PSHOME\Profile.ps1" -Value "clear"
oh-my-posh font install --user "SpaceMono"
winget install -e --id=JesseDuffield.lazygit
. $PSHOME\Profile.ps1