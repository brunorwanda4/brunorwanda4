# Example Aliases
Set-Alias proj 'cd C:\Users\rbhap\Videos\GitHub'
Set-Alias cls 'Clear-Host'

# Example Functions
function gco {
    param([string]$branch)
    git checkout $branch
}

function gs {
    git status
}

Write-Host "✅ Useful aliases and functions added!" -ForegroundColor Green
