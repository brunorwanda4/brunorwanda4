# === Fast Mode Setup for VS Code ===

# Path where the profile will be stored
$profilePath = "$HOME\fast-mode.code-profile"

# JSON profile content
$profileJson = @"
{
  "$schema": "vscode://schemas/profile",
  "name": "Fast Mode",
  "extensions": {
    "recommendations": [
      "esbenp.prettier-vscode",
      "dbaeumer.vscode-eslint",
      "usernamehw.errorlens",
      "eamodio.gitlens"
    ]
  },
  "settings": {
    "workbench.colorTheme": "Default Dark+",
    "workbench.iconTheme": "material-icon-theme",
    "editor.codeLens": false,
    "editor.occurrencesHighlight": false,
    "editor.suggest.showIcons": false,
    "editor.suggest.maxVisibleSuggestions": 10,
    "editor.parameterHints.enabled": false,
    "editor.minimap.enabled": false,
    "editor.renderWhitespace": "none",
    "editor.renderControlCharacters": false,
    "files.autoSave": "onFocusChange",
    "files.maxMemoryForLargeFilesMB": 8192,
    "explorer.autoReveal": false,
    "search.followSymlinks": false,
    "search.useIgnoreFiles": true,
    "typescript.tsserver.maxTsServerMemory": 4096,
    "typescript.disableAutomaticTypeAcquisition": true,
    "window.titleBarStyle": "custom",
    "workbench.editor.enablePreview": false
  }
}
"@

# Save profile file
Set-Content -Path $profilePath -Value $profileJson -Encoding UTF8

Write-Host "✅ Fast Mode profile saved at $profilePath"

# Launch VS Code with Fast Mode
code --profile $profilePath
