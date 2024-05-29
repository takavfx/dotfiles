New-Item -ItemType SymbolicLink -Path $Env:APPDATA\helix\languages.toml -Target .\helix\config.toml
New-Item -ItemType SymbolicLink -Path $Env:APPDATA\helix\languages.toml -Target .\helix\languages.toml
New-Item -ItemType SymbolicLink -Path $Env:LOCALAPPDATA\nvim\lua\pluagins\colorscheme.lua -Target nvim\lua\pluagins\colorscheme.lua
