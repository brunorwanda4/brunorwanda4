# Install Oh-My-Posh for a professional prompt
Install-Module oh-my-posh -Scope CurrentUser -Force -SkipPublisherCheck

# Import Oh-My-Posh and set a theme
Import-Module oh-my-posh
Set-PoshPrompt -Theme Paradox

Write-Host "✅ Oh-My-Posh installed and theme set!" -ForegroundColor Green
