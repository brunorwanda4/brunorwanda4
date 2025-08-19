Got it ✅
Let’s make you a **VS Code Profile file** called `fast-mode.code-profile`.
When you import & switch to it, VS Code will load **only the essential extensions + optimized settings** = much faster 🚀.

---

## 📄 `fast-mode.code-profile`

```json
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

    // Performance boosts
    "editor.codeLens": false,
    "editor.occurrencesHighlight": false,
    "editor.suggest.showIcons": false,
    "editor.suggest.maxVisibleSuggestions": 10,
    "editor.parameterHints.enabled": false,
    "editor.minimap.enabled": false,
    "editor.renderWhitespace": "none",
    "editor.renderControlCharacters": false,

    // Save / File performance
    "files.autoSave": "onFocusChange",
    "files.maxMemoryForLargeFilesMB": 8192,
    "explorer.autoReveal": false,
    "search.followSymlinks": false,
    "search.useIgnoreFiles": true,

    // TS/JS performance
    "typescript.tsserver.maxTsServerMemory": 4096,
    "typescript.disableAutomaticTypeAcquisition": true,

    // UI tweaks
    "window.titleBarStyle": "custom",
    "workbench.editor.enablePreview": false
  }
}
```

---

## 🚀 How to Use

1. Save the above JSON as `fast-mode.code-profile` on your PC.
2. Open VS Code → press `Ctrl+Shift+P`.
3. Type **Profiles: Import Profile** → select the `fast-mode.code-profile` file.
4. Switch to **Fast Mode** anytime (from Profiles menu).

---

⚡ This profile is **lightweight**: only

* Prettier (formatter)
* ESLint (linting)
* ErrorLens (errors inline)
* GitLens (git productivity)

Everything else is **disabled** so VS Code runs smooth.

---

👉 Do you want me to also make a **one-liner PowerShell script** that you can run (`fastmode.ps1`) to quickly import + switch to this profile automatically?
