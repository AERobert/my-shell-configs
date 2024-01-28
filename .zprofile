# to access Homebrew packages
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(rbenv init -)"
export PATH=/usr/local/bin:texbin:/opt/local:$PATH
export PATH="$PATH:/Applications/Racket v8.6/bin"
export PATH="$PATH:/Users/roberteggleston/programming/shell/tdsr/"
export PATH="$PATH:/Users/roberteggleston/programming/shell/bin"
export PATH="$PATH:/Applications/calibre.app/Contents/MacOS"

alias g++='/opt/homebrew/bin/g++-11'
alias make='/opt/homebrew/bin/gmake'
alias sed="/opt/homebrew/bin/gsed"
alias grep="/opt/homebrew/bin/ggrep"
alias ls="/opt/homebrew/bin/gls"
alias xargs="/opt/homebrew/bin/gxargs"


export DTK_PROGRAM=mac
eval "$(pyenv init --path)"

##
# Your previous /Users/roberteggleston/.zprofile file was backed up as /Users/roberteggleston/.zprofile.macports-saved_2022-11-19_at_13:31:58
##

# MacPorts Installer addition on 2022-11-19_at_13:31:58: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# MacPorts Installer addition on 2022-11-19_at_13:31:58: adding an appropriate MANPATH variable for use with MacPorts.
export MANPATH="/opt/local/share/man:$MANPATH"
# Finished adapting your MANPATH environment variable for use with MacPorts.

