Write-Output "⏳ Loading profile"

# https://github.com/ajeetdsouza/zoxide
$zoxide = Get-Command zoxide -ErrorAction SilentlyContinue
if (-not $zoxide) {
    Write-Output "⏳ Installing zoxide..."
    winget install ajeetdsouza.zoxide --silent
}
Write-Output "✅ zoxide"

# https://github.com/junegunn/fzf
$fzf = Get-Command fzf -ErrorAction SilentlyContinue
if (-not $fzf) {
    Write-Output "⏳ Installing fzf..."
    winget install fzf --silent
}
Write-Output "✅ fzf"

Invoke-Expression (& { (zoxide init powershell | Out-String) })
Set-PsFzfOption -PSReadlineChordProvider "Ctrl+r" -PSReadlineChordReverseHistory "Ctrl+f"

# Load scripts
#. "$PSScriptRoot\my-script.ps1"

Write-Output "✅ Profile loaded"