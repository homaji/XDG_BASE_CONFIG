set XDG_CONFIG_HOME=%OneDrive%\Software\Settings\nvim\
set XDG_CACHE_HOME=%TEMP%\neovim\
mkdir %XDG_CACHE_HOME% > NUL 2>&1

set XDG_DATA_HOME=%HOMEPATH%\.local\
mkdir %XDG_DATA_HOME% > NUL 2>&1

set MYBIN=%OneDrive%\Software\
set NVIM=%MYBIN%\neovim\bin\
set NVUI=%MYBIN%\nvui\bin\
set DENO=%MYBIN%\deno\
set PATH=%NVIM%;%NVUI%;%DENO%;%PATH%

REM start %OneDrive%\Software\nvui\bin\nvui.exe
start %NVUI%nvui.exe

