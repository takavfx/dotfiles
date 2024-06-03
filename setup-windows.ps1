# Helix
if (!(Test-Path $Env:APPDATA\helix)) {
    New-Item -ItemType SymbolicLink -Path $Env:APPDATA\helix -Target helix
} else {
    $confirmation = Read-Host "helix directory already exists. Do you want to overwrite it? (y/n)"
    if ($confirmation -eq "y") {
        Remove-Item $Env:APPDATA\helix -Recurse
        New-Item -ItemType SymbolicLink -Path $Env:APPDATA\helix -Target helix
    }
}

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
