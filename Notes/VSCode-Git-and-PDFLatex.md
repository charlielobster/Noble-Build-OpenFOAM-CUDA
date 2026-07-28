
# Visual Studio Code, `git`, `gh`

```bash
sudo apt install git gh # git tools
sudo snap install code --classic # vc code

# git config
git config --global user.name <user name>
git config --global user.email <email>
```

# LaTeX Build Tools

```bash
sudo apt install texlive-full
```

## Inside Visual Studio Code User Preferences 
### Control + Shift P : Preferences: Open User Settings (JSON)

```json
{
    "latex-workshop.latex.clean.method": "glob",
    "latex-workshop.latex.autoBuild.run": "never",
    "latex-workshop.latex.autoClean.run": "onBuilt",
    "latex-workshop.latex.clean.fileTypes": [
        "*.aux", "*.bbl", "*.blg", "*.idx", "*.ind", "*.lof", "*.lot", 
        "*.out", "*.toc", "*.acn", "*.acr", "*.alg", "*.glg", "*.glo", 
        "*.gls", "*.ist", "*.fls", "*.log", "*.fdb_latexmk", "*.snm", 
        "*.nav"
    ],
    "latex-workshop.latex.tools": [
        {
            "name": "latexmk",
            "command": "latexmk",
            "args": [
                "-shell-escape",
                "-synctex=1",
                "-interaction=nonstopmode",
                "-file-line-error",
                "-pdf",
                "%DOC%"
            ],
            "env": {}
        },
        {
            "name": "clean-markdown-cache",
            "command": "rm",
            "args": [
                "-rf",
                "%DIR%/_markdown_%DOCFILE%",
                "%DIR%/%DOCFILE%.markdown.lua"
            ],
            "env": {}
        }
    ],
    "latex-workshop.latex.recipes": [
        {
            "name": "Compile with Markdown Cleanup",
            "tools": [
                "latexmk",
                "clean-markdown-cache"
            ]
        }
    ]
}
```