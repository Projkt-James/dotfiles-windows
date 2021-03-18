# Create symlink to .gitconfig in home directory

$currentPrincipal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())

if ($currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "Removing any existing gitconfig from home path" -ForegroundColor Gray
    Remove-Item "$HOME/.gitconfig"

    Write-Host "Creating symlink to .gitconfig file!" -ForegroundColor Gray
    New-Item -ItemType symboliclink -Path $HOME -Name .gitconfig -Value "$PWD\gitconfig.symlink" | Out-Null
    Write-Host "Complete!" -ForegroundColor Green
} else {
    Write-Host "[Error] Unable to create symlink, Admin privileges required!" -ForegroundColor DarkRed
}