Nice choice 🙌 A **VS Code Profile** is the cleanest way — one import and you get:

* All extensions installed
* All your settings applied

---

### 📦 Step 1: Create the Profile JSON

Save this file somewhere as `professional-profile.code-profile` (for example in your Downloads folder).

```json
{
  "$schema": "vscode://schemas/profile",
  "name": "Professional Dev",
  "extensions": {
    "recommendations": [
      "esbenp.prettier-vscode",
      "dbaeumer.vscode-eslint",
      "usernamehw.errorlens",
      "eamodio.gitlens",
      "wayou.vscode-todo-highlight",
      "christian-kohler.path-intellisense",
      "steoates.autoimport",
      "coenraads.bracket-pair-colorizer-2",
      "TabNine.tabnine-vscode",
      "github.copilot",
      "pkief.material-icon-theme",
      "johnpapa.vscode-peacock",
      "oderwat.indent-rainbow",
      "alefragnani.bookmarks",
      "streetsidesoftware.code-spell-checker",
      "dsznajder.es7-react-js-snippets",
      "rbbit.typescript-hero",
      "bradlc.vscode-tailwindcss",
      "heybourn.headwind",
      "styled-components.vscode-styled-components",
      "rust-lang.rust-analyzer",
      "serayuzgur.crates",
      "tamasfe.even-better-toml",
      "Prisma.prisma",
      "mongodb.mongodb-vscode",
      "humao.rest-client",
      "rangav.vscode-thunder-client"
    ]
  },
  "settings": {
    "workbench.colorTheme": "GitHub Dark Colorblind (Beta)",
    "workbench.iconTheme": "material-icon-theme",
    "workbench.sideBar.location": "right",
    "editor.minimap.enabled": false,
    "editor.renderWhitespace": "all",
    "editor.cursorSmoothCaretAnimation": "on",
    "editor.cursorBlinking": "phase",
    "editor.smoothScrolling": true,
    "editor.fontLigatures": true,
    "editor.inlayHints.enabled": "on",
    "explorer.compactFolders": false,

    "files.autoSave": "onFocusChange",
    "files.trimTrailingWhitespace": true,
    "files.insertFinalNewline": true,
    "files.exclude": {
      "**/.git": true,
      "**/node_modules": true,
      "**/dist": true,
      "**/.DS_Store": true
    },

    "git.enableSmartCommit": true,
    "git.autofetch": true,
    "git.confirmSync": false,
    "gitlens.hovers.currentLine.over": "line",
    "gitlens.codeLens.enabled": true,

    "editor.formatOnSave": true,
    "editor.formatOnPaste": true,
    "editor.codeActionsOnSave": {
      "source.organizeImports": true,
      "source.fixAll.eslint": true
    },
    "eslint.alwaysShowStatus": true,
    "eslint.format.enable": true,
    "eslint.validate": ["javascript", "javascriptreact", "typescript", "typescriptreact"],

    "prettier.singleQuote": true,
    "prettier.trailingComma": "all",
    "prettier.semi": true,
    "prettier.printWidth": 100,

    "editor.quickSuggestions": { "strings": true },
    "tailwindCSS.emmetCompletions": true,
    "tailwindCSS.includeLanguages": {
      "plaintext": "html",
      "typescriptreact": "html"
    },

    "[typescript]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
    "[typescriptreact]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
    "[javascript]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
    "[javascriptreact]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
    "[json]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
    "[css]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
    "[html]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
    "[prisma]": { "editor.defaultFormatter": "Prisma.prisma" },
    "[markdown]": { "editor.wordWrap": "on", "editor.quickSuggestions": false },

    "typescript.updateImportsOnFileMove.enabled": "always",
    "javascript.updateImportsOnFileMove.enabled": "always",
    "typescript.suggest.autoImports": true,
    "javascript.suggest.autoImports": true,
    "typescript.preferences.importModuleSpecifier": "non-relative",
    "javascript.preferences.importModuleSpecifier": "non-relative",

    "rust-analyzer.cargo.autoreload": true,
    "rust-analyzer.checkOnSave.command": "clippy",
    "rust-analyzer.inlayHints.enable": true,

    "prisma.formatter": true,
    "mdb.connectionString": "mongodb://localhost:27017",

    "editor.inlineSuggest.enabled": true,
    "github.copilot.enable": { "*": true, "yaml": false, "markdown": true },
    "tabnine.experimentalAutoImports": true,

    "terminal.integrated.fontFamily": "JetBrains Mono, Fira Code, monospace",
    "terminal.integrated.cursorStyle": "underline",
    "terminal.integrated.cursorBlinking": true
  }
}
```

---

### 📦 Step 2: Import Profile into VS Code

1. Open **VS Code**
2. Go to **Command Palette** (`Ctrl+Shift+P` or `F1`)
3. Search for **“Profiles: Import Profile”**
4. Select **“Import from file”**
5. Choose the `professional-profile.code-profile` file you saved

---

✅ Done! VS Code will reload with:

* All the **extensions** installed
* All **settings** applied automatically

---

👉 Do you want me to also make a **lightweight variant** (only frontend: Next.js + Tailwind + TypeScript) and a **full-stack variant** (frontend + backend Rust/Prisma/MongoDB), so you can switch profiles depending on the project?
