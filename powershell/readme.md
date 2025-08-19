Perfect! We can create **5 separate PowerShell scripts**, each focusing on one key area to make your PowerShell professional, fast, and smart. You can run them one by one.

Here’s the plan:

---

## **1️⃣ `01-setup-oh-my-posh.ps1` — Colorful Prompt & Git Info**

```powershell
# Install Oh-My-Posh for a professional prompt
Install-Module oh-my-posh -Scope CurrentUser -Force -SkipPublisherCheck

# Import Oh-My-Posh and set a theme
Import-Module oh-my-posh
Set-PoshPrompt -Theme Paradox

Write-Host "✅ Oh-My-Posh installed and theme set!" -ForegroundColor Green
```

---

## **2️⃣ `02-setup-psreadline.ps1` — Autocomplete & Command History**

```powershell
# Install PSReadLine for autocomplete and predictive suggestions
Install-Module PSReadLine -Scope CurrentUser -Force -SkipPublisherCheck

# Enable predictive suggestions based on history
Set-PSReadLineOption -PredictionSource History

# Customize colors for better readability
Set-PSReadLineOption -Colors @{
    Command      = [ConsoleColor]::Cyan
    Parameter    = [ConsoleColor]::Yellow
    String       = [ConsoleColor]::Green
    Operator     = [ConsoleColor]::Magenta
    Comment      = [ConsoleColor]::DarkGray
}

Write-Host "✅ PSReadLine installed with predictive autocomplete and colors!" -ForegroundColor Green
```

---

## **3️⃣ `03-aliases-functions.ps1` — Shortcuts for Speed**

```powershell
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
```

---

## **4️⃣ `04-terminal-settings.ps1` — Font, Cursor & Scrollback**

```powershell
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
```

> Note: Terminal fonts are mainly set via **Windows Terminal / VS Code terminal settings**.

---

## **5️⃣ `05-final-touch.ps1` — Optional Extras**

```powershell
# Enable Tab Completion Menu
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

# Enable history search with arrows
Set-PSReadLineOption -HistorySearchCursorMovesToEnd $true

Write-Host "✅ Final tweaks applied: Tab completion & history search enabled!" -ForegroundColor Green
```

---

### **📌 How to Use**

1. Save all files in a folder, e.g., `C:\Users\rbhap\PowerShellSetup`
2. Open PowerShell as **Admin**
3. Navigate to the folder:

```powershell
cd C:\Users\rbhap\PowerShellSetup
```

4. Run each file in order:

```powershell
.\01-setup-oh-my-posh.ps1
.\02-setup-psreadline.ps1
.\03-aliases-functions.ps1
.\04-terminal-settings.ps1
.\05-final-touch.ps1
```

5. Restart PowerShell or VS Code terminal

---

✅ After running all five scripts, your PowerShell will have:

- Colorful professional prompt
- Autocomplete & predictive suggestions
- Handy aliases and functions
- Smooth terminal appearance
- Tab completion and history search

---

If you want, I can **combine all five into a single “one-click” script** that installs everything automatically and safely.

Do you want me to do that?
