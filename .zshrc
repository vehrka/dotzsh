## General
#

HISTFILE=~/.zsh_history
HISTSIZE=2000
SAVEHIST=10000

setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
setopt nobeep
setopt correct

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

bindkey -v

# Set name of the theme to load.
ZSH_THEME="agnoster"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git ubuntu fabric git-flow rsync python virtualenv virtualenvwrapper common-aliases)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=es_ES.UTF-8

alias ez='vim ~/.zshrc'
alias ev='vim ~/.vimrc.local'
alias wwwserve='python -m SimpleHTTPServer'
alias treed='tree -L 3 -d'
alias treef='tree -L 3'

alias -g L='| less'
alias -g G='| ack'

export GCS_LANGUAGE='en'
