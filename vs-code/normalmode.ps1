# === Normal Mode Setup for VS Code ===

# Path to your full professional profile
$profilePath = "$HOME\professional-profile.code-profile"

# Check if profile exists
if (-Not (Test-Path $profilePath)) {
    Write-Host "⚠️ Professional profile not found at $profilePath"
    Write-Host "Please make sure you saved professional-profile.code-profile in your home directory."
    exit
}

# Launch VS Code with Professional Profile
Write-Host "🚀 Launching VS Code in Professional Mode..."
code --profile $profilePath
