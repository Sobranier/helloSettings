# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/xxx/.oh-my-zsh"

ZSH_THEME="avit"


# Plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# settings
eval `keychain --eval --agents ssh --inherit any id_rsa`
export FZF_DEFAULT_OPTS='--height 40% --reverse --border'


# COMMAND ALIAS
alias ssh='ssh -A -o ConnectTimeout=3 -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null'
# alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias his='history | grep'
alias ff='find * -type f | fzf'
alias vf='vim $(fzf --height 40%)'
alias cc=clear

# PATH ALIAS
alias meicai='cd /xxx/meicai; ls'
alias github='cd /xxx/github; ls'

cd ~/Projects
