$env:HOME=$env:HOMEDRIVE + $env:HOMEPATH
$env:XDG_CONFIG_HOME="$env:HOME\.config"
#New-Item $env:XDG_CONFIG_HOME -ItemType Directory

cmd /c mklink /j  $env:XDG_CONFIG_HOME $PSSCriptRoot

$env:XDG_CACHE_HOME=$env:TEMP
New-Item $env:XDG_CACHE_HOME -ItemType Directory

$env:XDG_DATA_HOME= $env:LOCALAPPDATA
New-Item $env:XDG_DATA_HOME -ItemType Directory 

#Set permanent env
[Environment]::SetEnvironmentVariable('XDG_CONFIG_HOME',$Env:XDG_CONFIG_HOME,'User')
[Environment]::SetEnvironmentVariable('XDG_CACHE_HOME',$Env:XDG_CACHE_HOME,'User')
[Environment]::SetEnvironmentVariable('XDG_DATA_HOME',$Env:XDG_DATA_HOME,'User')

