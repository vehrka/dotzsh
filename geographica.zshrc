# ########################################################################
## General
# ########################################################################
HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=10000
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
setopt nobeep

# ########################################################################
## Path
# ########################################################################
export PATH="$HOME/bin:$HOME/.local/bin:$HOME/.cargo/bin:$HOME/go/bin:/usr/local/bin:/usr/local/opt/gdal2/bin:/snap/bin:/usr/local/go/bin:$PATH"

# ########################################################################
# ZSH CONFIG
# ########################################################################
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(autojump git)
source $ZSH/oh-my-zsh.sh

# ########################################################################
# LOCALE configuration
# ########################################################################
# You may need to manually set your language environment
export LANG=en_IE.UTF-8
export LC_ADDRESS=en_IE.UTF-8
export LC_IDENTIFICATION=en_IE.UTF-8
export LC_MEASUREMENT=en_IE.UTF-8
export LC_MONETARY=en_IE.UTF-8
export LC_NAME=en_IE.UTF-8
export LC_NUMERIC=en_IE.UTF-8
export LC_PAPER=en_IE.UTF-8
export LC_TELEPHONE=en_IE.UTF-8
export LC_TIME=en_IE.UTF-8
export LC_CTYPE=en_IE.UTF-8

# ########################################################################
# EDITOR
# ########################################################################
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi
# Change default Browser
export BROWSER=/usr/bin/google-chrome-stable
export DEFAULT_BROWSER=/usr/bin/google-chrome-stable

# ########################################################################
# FLAGS
# ########################################################################
export USE_POWERLINE="true"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANROFFOPT='-c'

# ########################################################################
# ALIASES
# ########################################################################
alias -g G='| ack'
alias -g J='| jq '
alias -g JB='| jq | bat -l json '
alias -g L='| less'
alias cal='ncal -Mb '
alias cat="bat" # bat cargo install bat
alias diff="diff-so-fancy" # pacman -S diff-so-fancy
alias dmerge='git branch --merged | egrep -v "(^\*|master|main|dev|development|stg|staging)" | xargs git branch -d'
alias ei='vim ~/.i3/config'
alias elf='vim ~/.config/lf/lfrc'
alias ev='vim ~/.config/nvim/init.vim'
alias ez='vim ~/.zshrc'
alias f="fd" # pacman -S fd
alias gcil="gcloud compute instances list"
alias la="eza -lahF" # cargo install eza
alias lf='lfu'
alias ls="eza --long --git -a --header --group"
alias oldvim="vim"
alias tree='eza --tree --level=2 --long -a --header --git'
alias vi="nvim"
alias vim="nvim"
alias weather='curl wttr.in/Valencia+Spain'
alias weather2='curl v2.wttr.in/Valencia+Spain'
alias wwwserve='python3 -m http.server 8000'
alias xps='ps -ax '
alias xpsg='ps -ax G '
alias open='xdg-open'
alias hg='history | ack '
alias tsr='tmux rename-session -t ' # -t oldname newname
source ~/x1cg9/dotdb_aliases

# ########################################################################
# CARTO ALIASES
# ########################################################################
alias load_carto_env='source /tmp/cartoenv'
alias read_batch='carto_batch list | carto_batch read | jq . '
alias kubegj='kubectl get jobs.batch'
alias kubedj='kubectl describe job'
alias kubegp='kubectl get pods'
alias kubel='kubectl logs '
alias kubelf='kubectl logs -f '
alias kubex='kubectl exec '
# DBT
alias activate_dbt='source ~/Env/dbt-env/bin/activate'

# ########################################################################
# OTHER
# ########################################################################
# added by Snowflake SnowSQL installer
export PATH=/home/perico/opt:$PATH
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit
source ~/.dbt-completion.bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
