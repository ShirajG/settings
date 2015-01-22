export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export PATH=$HOME/.local/bin:$PATH


if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

export PATH="$HOME/.bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh --no-rehash)"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

alias b="bundle"
alias ag="sudo apt-get"
alias open='xdg-open'
alias bam='rake db:drop && rake db:create && rake db:migrate'
alias server='python -m SimpleHTTPServer'
alias rmd="rm -rf"
setxkbmap -option "altwin:ctrl_alt_win"

stream(){
  peerflix "$1" --vlc
}
