$env:HOME=$env:HOMEPATH
$env:XDG_CONFIG_HOME="$env:HOMEPATH\.config"
New-Item $env:XDG_CONFIG_HOME -ItemType Directory

cmd /c mklink /j  "$env:XDG_CONFIG_HOME\nvim" $PSSCriptRoot

$env:XDG_CACHE_HOME="$env:TEMP\neovim\"
New-Item $env:XDG_CACHE_HOME -ItemType Directory

$env:XDG_DATA_HOME="$env:HOMEPATH\.local\"
New-Item $env:XDG_DATA_HOME -ItemType Directory 

#Set permanent env
[Environment]::SetEnvironmentVariable('XDG_CONFIG_HOME',$Env:XDG_CONFIG_HOME,'User')
[Environment]::SetEnvironmentVariable('XDG_CACHE_HOME',$Env:XDG_CACHE_HOME,'User')
[Environment]::SetEnvironmentVariable('XDG_DATA_HOME',$Env:XDG_DATA_HOME,'User')

iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force

