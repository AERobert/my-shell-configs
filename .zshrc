# subfiles

source ~/functions.zsh

PROMPT='%1/ %T > '



alias dow="cd /Users/roberteggleston/Downloads"
alias prog="cd ~/programming"
alias vimf="cd /opt/homebrew/Cellar/vim/*/share/vim/vim*/"
alias u="cd .."
alias l="pwd"
alias b="cd -"

alias x='f() { for file in "$@"; do ls -lh --time-style=long-iso "$file" | awk "BEGIN {OFS=\" - \"} {print \"name: \"\$NF, \"modified: \"\$6, \"size: \"\$5}"; done }; f'



alias srcrc="source ~/.zshrc"
alias pnrc='nt ~/.zshrc'
alias tdsr="/Users/roberteggleston/programming/shell/tdsr/tdsr"
alias dtd="open -a Terminal ."

alias cpc='(){clang -Wall -Wextra -Werror -o $1 $1.c;}'
alias cpcpp='(){g++-13 -Wall -Wextra -Werror -o $1 $1.cpp;}'

alias nt='(){touch $1;open $1;}'
alias nte='(){touch $1;open -a textedit $1;}'


alias noptunes="launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist"
nd(){mkdir -p $1;cd $1;}
cfa(){for i in "${@:1}";do;duti -s $(osascript -e 'id of app "'"$1"'"') "$i" all;done;}
cfd(){if [ $# -eq 0 ] ; then; echo -n "$(pwd)" | pbcopy; else; echo -n "$(grealpath -m $1)" | pbcopy;fi;}
p2h(){pdf2htmlex "$1.pdf" --dest-dir "./$1" --embed-image 0 --embed-css 0 --embed-font 0 --embed-javascript 0;rm ./$1/*.css;}
# ebook-convert(){/Applications/calibre.app/Contents/MacOS/ebook-convert  $*;}
config(){git --git-dir=~/.cfg --work-tree=~ $*;}


[ -f "/Users/roberteggleston/.ghcup/env" ] && source "/Users/roberteggleston/.ghcup/env" # ghcup-env


<< noViForNow
# I like VI

set -o vi

## but not its view on the backspace

bindkey -M viins '^?' backward-delete-char
bindkey -M viins '^H' backward-delete-char

## or its abuse of my pinky

bindkey -M viins 'jkj' vi-cmd-mode

## titling VI's modes

function set_window_title() {
    case $KEYMAP in
        vicmd) print -Pn "\e]2;NORMAL MODE\a" ;; # For vi command mode
        viins) print -Pn "\e]2;VIINS MODE\a" ;; # For vi insert mode
        *) print -Pn "\e]2;INSERT MODE\a" ;;    # Should be for other modes, but insert mode doesn't want to be recognized the traditional way
    esac
}

function zle-keymap-select {
    set_window_title
}

function zle-line-finish {
    set_window_title
}

zle -N zle-keymap-select
zle -N zle-line-finish

set_window_title


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
noViForNow