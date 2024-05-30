# Helix
New-Item -ItemType SymbolicLink -Path $Env:APPDATA\helix\config.toml -Target .\helix\config.toml
New-Item -ItemType SymbolicLink -Path $Env:APPDATA\helix\languages.toml -Target .\helix\languages.toml

# NeoVim
New-Item -ItemType SymbolicLink -Path $Env:LOCALAPPDATA\nvim\lua\plugins\colorscheme.lua -Target nvim\lua\plugins\colorscheme.lua
