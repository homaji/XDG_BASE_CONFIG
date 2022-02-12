$env:HOME=$env:USERPROFILE
$env:XDG_CONFIG_HOME="$env:HOMEPATH\.config"


New-Item $env:XDG_CONFIG_HOME -ItemType Directory

# $DATA_FROM=$env:OneDrive + "\Software\Settings\nvim\"
$DATA_FROM=$PSScriptRoot
$DATA_TO=$env:XDG_CONFIG_HOME + "\nvim\"
cmd /c mklink /j $DATA_TO $DATA_FROM

$env:XDG_CACHE_HOME="$env:TEMP\neovim\"
New-Item $env:XDG_CACHE_HOME -ItemType Directory

$env:XDG_DATA_HOME="$env:HOMEPATH\.local\"
New-Item $env:XDG_DATA_HOME -ItemType Directory 


iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
