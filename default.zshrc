## General
#

HISTFILE=~/.zsh_history
HISTSIZE=2000
SAVEHIST=10000

setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
setopt nobeep

# Exports
#

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
# For virtualenvwrapper
export WORKON_HOME=~/pyenvs

# Settings
#
# Set name of the theme to load.
ZSH_THEME="agnoster_"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(autojump docker docker-compose fabric git git-flow poetry rsync timer tmux ubuntu)

# User configuration

export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$HOME/.cargo/bin:/usr/local/opt/gdal2/bin:/Applications/Postgres.app/Contents/Versions/10/bin:/Users/pedro/Library/Python/3.7/bin:/Users/pedro/Library/Python/3.6/bin:/usr/local/opt/sphinx-doc/bin:/Users/pedro/Library/Python/2.7/bin:$PATH"

# SNAP 
#
# If you are using zsh, the snap binary and desktop directories will not automatically be added 
# to your environment variables. In order to solve this, I added the following line to /etc/zsh/zprofile (taken from Arch):
#
# emulate sh -c 'source /etc/profile'


source $ZSH/oh-my-zsh.sh

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

build_prompt() {
        RETVAL=$?
        prompt_status
        prompt_context
        prompt_dir
        prompt_git
        prompt_end
}

# CARTO_ENV
export CARTO_ENV=/tmp/cartoenv

# ALIAS
#

alias ez='vim ~/.zshrc'
alias ev='vim ~/.vimrc'
alias ei='vim ~/.config/i3/config'

alias wwwserve='python3 -m http.server 8000'

alias treed='tree -L 3 -d'
alias treef='tree -L 3'

alias diff="diff-so-fancy"
alias ls="exa"
alias la="l"
alias find="fd"
alias f="fd"

alias -g G='| ack'
alias -g L='| less'
alias -g J='| jq '
alias -g CJ='| carto_batch read | jq '

#alias grep='grep -RnisI --color=auto --exclude-dir={.pyc,.bzr,CVS,.git,.hg,.svn}'
#alias bgrep='/bin/grep'

alias daily="git log --reverse --branches --since=yesterday --format=format:'%C(cyan) %ad %C(yellow)%h %Creset %s %Cgreen%d' --date=local"
alias weekly="git log --reverse --branches --since='last week' --format=format:'%C(cyan) %ad %C(yellow)%h %Creset %s %Cgreen%d' --date=local"

alias load_carto_env='source /tmp/cartoenv'

alias read_batch='carto_batch list | carto_batch read | jq . '

alias cal='ncal -Mb '

# Google cloud
#

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/pedro/google-cloud-sdk/path.zsh.inc' ]; then . '/home/pedro/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/home/pedro/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/pedro/google-cloud-sdk/completion.zsh.inc'; fi

# SOURCE
#

source <(kubectl completion zsh)
source ~/.invoke-completion.sh
source ~/.db_aliases
source /usr/local/bin/virtualenvwrapper.sh
