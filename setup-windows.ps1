# Helix
New-Item -ItemType SymbolicLink -Path $Env:APPDATA\helix\config.toml -Target .\helix\config.toml
New-Item -ItemType SymbolicLink -Path $Env:APPDATA\helix\languages.toml -Target .\helix\languages.toml

# NeoVim
if (!(Test-Path $Env:LOCALAPPDATA\nvim)) {
    New-Item -ItemType SymbolicLink -Path $Env:LOCALAPPDATA\nvim -Target nvim
} else {
    $confirmation = Read-Host "nvim directory already exists. Do you want to overwrite it? (y/n)"
    if ($confirmation -eq "y") {
        Remove-Item $Env:LOCALAPPDATA\nvim -Recurse
        New-Item -ItemType SymbolicLink -Path $Env:LOCALAPPDATA\nvim -Target nvim
    }
}
