# Set user variable based on XDG_Base_Directory Specification.

export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

# Set prompt
## \[ ... \] : encloses control sequence with \[ and \] for accurate word wrap
## \033[xxm : changes the color of command line
## \h : the hostname up to the first "."
## \w : current working directory
## \n : newline
## \$ : "$" for non-root, "#" for root

export PS1='\[\033[32m\][\h: \w]\n\$\033[34m\] '
