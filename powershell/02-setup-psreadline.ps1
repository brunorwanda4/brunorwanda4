# Install PSReadLine for autocomplete and predictive suggestions
Install-Module PSReadLine -Scope CurrentUser -Force -SkipPublisherCheck

# Enable predictive suggestions based on history
Set-PSReadLineOption -PredictionSource History

# Customize colors for better readability
Set-PSReadLineOption -Colors @{
    Command   = [ConsoleColor]::Cyan
    Parameter = [ConsoleColor]::Yellow
    String    = [ConsoleColor]::Green
    Operator  = [ConsoleColor]::Magenta
    Comment   = [ConsoleColor]::DarkGray
}

Write-Host "✅ PSReadLine installed with predictive autocomplete and colors!" -ForegroundColor Green
