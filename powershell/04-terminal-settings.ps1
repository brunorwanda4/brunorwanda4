# Configure PowerShell terminal appearance
$profilePath = $PROFILE
if (!(Test-Path $profilePath)) {
    New-Item -Type File -Path $profilePath -Force
}

# Add terminal settings to profile
$profileContent = @"
# Terminal font and cursor
\$Host.UI.RawUI.FontSize = 14
# Cursor blinking is default on
"@

Add-Content -Path $profilePath -Value $profileContent

Write-Host "✅ Terminal font size and cursor configured!" -ForegroundColor Green
