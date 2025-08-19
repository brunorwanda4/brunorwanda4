# =====================================================
# Setup Professional Terminal for Windows / VS Code
# =====================================================

# 1️⃣ Install Oh-My-Posh
Write-Host "Installing Oh-My-Posh..." -ForegroundColor Cyan
Install-Module oh-my-posh -Scope CurrentUser -Force -SkipPublisherCheck

# 2️⃣ Install PSReadLine for better autocomplete & suggestions
Write-Host "Installing PSReadLine..." -ForegroundColor Cyan
Install-Module PSReadLine -Scope CurrentUser -Force -SkipPublisherCheck

# 3️⃣ Configure Oh-My-Posh theme (Paradox is clean & professional)
$themeName = "Paradox"
Write-Host "Setting Oh-My-Posh theme to '$themeName'..." -ForegroundColor Cyan

# Ensure profile exists
if (!(Test-Path -Path $PROFILE)) {
    New-Item -Type File -Path $PROFILE -Force
}

# Add setup to PowerShell profile
$profileContent = @"
Import-Module oh-my-posh
Set-PoshPrompt -Theme $themeName

# Enable PSReadLine with history-based suggestions and colors
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -Colors @{
    Command      = [ConsoleColor]::Cyan
    Parameter    = [ConsoleColor]::Yellow
    String       = [ConsoleColor]::Green
    Operator     = [ConsoleColor]::Magenta
    Comment      = [ConsoleColor]::DarkGray
}
"@

# Write profile content
Set-Content -Path $PROFILE -Value $profileContent -Encoding UTF8
Write-Host "✅ PowerShell profile updated with Oh-My-Posh and PSReadLine"

# 4️⃣ Configure VS Code terminal (optional but recommended)
Write-Host "Configuring VS Code terminal settings..." -ForegroundColor Cyan


$mergedSettings = $existingSettings + $terminalSettings
$mergedSettings | ConvertTo-Json -Depth 10 | Set-Content -Path $settingsPath -Encoding UTF8

Write-Host "✅ VS Code terminal settings updated"
Write-Host "🎉 Professional Terminal setup complete! Restart VS Code to apply changes." -ForegroundColor Green
