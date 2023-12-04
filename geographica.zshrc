## General
#
HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=10000
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
setopt nobeep
#
## Path
#
export PATH="$HOME/bin:$HOME/.local/bin:$HOME/.cargo/bin:$HOME/go/bin:/usr/local/bin:/usr/local/opt/gdal2/bin:/snap/bin:/usr/local/go/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(autojump git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# Change default Browser
export BROWSER=/usr/bin/google-chrome-stable
export DEFAULT_BROWSER=/usr/bin/google-chrome-stable

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
export  USE_POWERLINE="true"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias vim="nvim"
alias vi="nvim"
alias oldvim="vim"
alias ez='vim ~/.zshrc'
alias ev='vim ~/.config/nvim/init.vim'
alias ei='vim ~/.i3/config'
alias wwwserve='python3 -m http.server 8000'
# pacman -S diff-so-fancy
alias diff="diff-so-fancy"
# cargo install eza
alias ls="eza  --long --git -a --header --group"
alias la="eza -lahF"
alias tree='eza --tree --level=2 --long -a --header --git'
# pacman -S fd
alias f="fd"
# bat cargo install bat
alias cat="bat"
alias gcil="gcloud compute instances list"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANROFFOPT="-c"
#
# tldr:: npm install -g tldr
alias -g G='| ack'
alias -g L='| less'
alias -g J='| jq '
alias -g JB='| jq | bat -l json '
alias -g CJ='| carto_batch read | jq '
#alias grep='grep -RnisI --color=auto --exclude-dir={.pyc,.bzr,CVS,.git,.hg,.svn}'
alias daily="git log --reverse --branches --since=yesterday --format=format:'%C(cyan) %ad %C(yellow)%h %Creset %s %Cgreen%d' --date=local"
alias weekly="git log --reverse --branches --since='last week' --format=format:'%C(cyan) %ad %C(yellow)%h %Creset %s %Cgreen%d' --date=local"
alias dmerge="git branch --merged| egrep -v '(^\*|master|dev|staging)'  | xargs git branch -d"

alias cal='ncal -Mb '
alias xps='ps -ax '
alias xpsg='ps -ax G '

alias load_carto_env='source /tmp/cartoenv'
alias read_batch='carto_batch list | carto_batch read | jq . '

alias kubegj='kubectl get jobs.batch'
alias kubedj='kubectl describe job'
alias kubegp='kubectl get pods'
alias kubel='kubectl logs '
alias kubelf='kubectl logs -f '
alias kubex='kubectl exec '

alias open='xdg-open'
alias weather_vlc_old='curl wttr.in/València'
alias weather_vlc='curl v2.wttr.in/València'
alias weather_per='curl v2.wttr.in/El_Perellonet'

alias hg='history | ack '

alias tsr='tmux rename-session -t ' # -t oldname newname
source ~/.db_aliases

# DBT
alias activate_dbt='source ~/Env/dbt-env/bin/activate'

# added by Snowflake SnowSQL installer
export PATH=/home/perico/opt:$PATH
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit
source ~/.dbt-completion.bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
