ZSH_THEME="agnoster"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(git)

export ZSH=$HOME/.oh-my-zsh
source $HOME/.zshenv
source $ZSH/oh-my-zsh.sh

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias b="bundle"
alias ag="sudo apt-get"
alias open='xdg-open'
alias bam='rake db:drop && rake db:create && rake db:migrate'
alias server='python -m SimpleHTTPServer'
alias rmd="rm -rf"
alias h="cd -"

setxkbmap -option "altwin:ctrl_alt_win"
xmodmap ~/.Xmodmap
stream(){
  peerflix "$1" --vlc
}
