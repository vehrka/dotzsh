## General
#
HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=10000
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
setopt nobeep
#
## Exports
#
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
# For virtualenvwrapper
export WORKON_HOME=~/pyenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export PATH="$HOME/bin:$HOME/.local/bin:$HOME/.cargo/bin:$HOME/go/bin:/usr/local/bin:/usr/local/opt/gdal2/bin:/snap/bin:/usr/local/go/bin:$PATH"
export XDG_DATA_DIRS="/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share:$XDG_DATA_DIRS"
#
# ON SNAP and PATH
#
# If you are using zsh, the snap binary and desktop directories will not automatically be added
# to your environment variables. In order to solve this, I added the following line to /etc/zsh/zprofile (taken from Arch):
#
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
# CARTO_ENV
export CARTO_ENV=/tmp/cartoenv
# FZF and RIPGREP
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow'
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
fpath+=~/.zfunc
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
## PROMPT
#
build_prompt() {
        RETVAL=$?
        prompt_status
        prompt_context
        prompt_dir
        prompt_git
        prompt_end
}
RPROMPT="[%D{%y/%m/%f}|%*]"
## Settings
#
# Set name of the theme to load.
ZSH_THEME="agnoster"
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(autojump docker docker-compose fabric git git-flow rsync timer tmux ubuntu)

#
# https://github.com/jeffreytse/zsh-vi-mode
# git clone https://github.com/jeffreytse/zsh-vi-mode ~/.oh-my-zsh/plugins/zsh-vi-mode
#
# SOURCE
#
# User configuration
# emulate sh -c 'source /etc/profile'
source $ZSH/oh-my-zsh.sh
source <(kubectl completion zsh)
source ~/.db_aliases
# source ~/.invoke-completion.sh
source /usr/local/bin/virtualenvwrapper.sh
# DOCKER
#
# Docker Builtkit
export DOCKER_BUILDKIT=1
export COMPOSE_DOCKER_CLI_BUILD=1
export USE_GKE_GCLOUD_AUTH_PLUGIN=True
## ALIAS
# To run a command without the alias use \ -> \ls instead of ls
alias ez='nvim ~/.zshrc'
alias ev='nvim ~/.config/nvim/init.vim'
alias en='nvim ~/.config/nvim/init.vim'
alias ei='nvim ~/.config/i3/config'
alias vi='nvim'
alias vim='nvim'
alias wwwserve='python3 -m http.server 8000'
# apt install diff-so-fancy
alias diff="diff-so-fancy"
# cargo install exa
alias ls="exa  --long --git -a --header --group"
alias la="exa -lahF"
alias tree='exa --tree --level=2 --long -a --header --git'
# apt install fd-find
alias f="fdfind"
# bat cargo install bat
alias cat="bat"
alias fdiff="git status -s | fzf --no-sort --reverse --preview 'git diff --color=always {+2} | diff-so-fancy' --bind=ctrl-j:preview-down --bind=ctrl-k:preview-up --preview-window=right:60%:wrap"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
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


#
## Google cloud
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/pedro/google-cloud-sdk/path.zsh.inc' ]; then . '/home/pedro/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/home/pedro/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/pedro/google-cloud-sdk/completion.zsh.inc'; fi
#
## AUTOCOMPLETITION
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit
source ~/.dbt-completion.bash
zstyle ':completion:*' menu select
#
## BINDKEYS after VIM plugin
# function zvm_after_lazy_keybindings() {
bindkey -s "^F" 'vim $(fzf)\n'
# }

# added by Snowflake SnowSQL installer
export PATH=/home/pedro/bin:$PATH
