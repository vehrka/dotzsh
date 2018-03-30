## General
#

HISTFILE=~/.zsh_history
HISTSIZE=2000
SAVEHIST=10000

setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
setopt nobeep

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

bindkey -v

# Set name of the theme to load.
ZSH_THEME="agnoster_"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git ubuntu fabric git-flow rsync svn python virtualenv virtualenvwrapper autojump)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=es_ES.UTF-8

prompt_svn() {
    local rev branch
    if in_svn; then
        rev=$(svn_get_rev_nr)
        branch=$(svn_get_branch_name)
        if [[ $(svn_dirty_choose_pwd 1 0) -eq 1 ]]; then
            prompt_segment yellow black
            echo -n "$rev@$branch"
            echo -n "±"
        else
            prompt_segment green black
            echo -n "$rev@$branch"
        fi
    fi
}

build_prompt() {
        RETVAL=$?
        prompt_status
        prompt_context
        prompt_dir
        prompt_git
        prompt_svn
        prompt_end
}

alias ei='vim ~/.config/i3/config'
alias ez='vim ~/.zshrc'
alias ev='vim ~/.vimrc.local'

alias wwwserve='python -m SimpleHTTPServer'

alias treed='tree -L 3 -d'
alias treef='tree -L 3'

alias -g G='| /bin/grep'
alias -g L='| less'

alias grep='/bin/grep -RnisI --color=auto --exclude-dir={.pyc,.bzr,CVS,.git,.hg,.svn}'
alias bgrep='/bin/grep'

export VIRTUAL_ENV_DISABLE_PROMPT=
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source  /usr/local/bin/virtualenvwrapper.sh

export JAVA_HOME=/usr/lib/jvm/java-9-oracle
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2
