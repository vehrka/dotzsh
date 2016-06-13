## General
#mnium
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
plugins=( autojump fabric git git-flow python rsync ubuntu virtualenv virtualenvwrapper )

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

source $HOME/.config/pyinvoke/zsh.txt

# You may need to manually set your language environment
export LANG=es_ES.UTF-8

# Aliases
alias -g G='| /bin/grep'
alias -g L='| less'

alias ei='vim ~/.config/i3/config'
alias ev='vim ~/.vimrc.local'
alias ez='vim ~/.zshrc'

alias fd='find . -type d -name'
alias ff='find . -type f -name'

alias grep='/bin/grep  -RnisI --color=auto --exclude-dir={.pyc,.bzr,CVS,.git,.hg,.svn}'
alias bgrep='/bin/grep'

alias ptipython='ptipython --vi'
alias ptpython='ptpython --vi'

alias treed='tree -L 3 -d'
alias treef='tree -L 3'


export GCS_LANGUAGE='en'

alias vi='vim'
alias wwwserve='python -m SimpleHTTPServer'

alias wc750='wc -c ~/Dropbox/conf/750words/*.rst'

export NVM_DIR="/home/pferrer/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

PATH="/home/pferrer/perl5/bin${PATH+:}${PATH}"; export PATH;
PERL5LIB="/home/pferrer/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/pferrer/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/pferrer/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/pferrer/perl5"; export PERL_MM_OPT;
