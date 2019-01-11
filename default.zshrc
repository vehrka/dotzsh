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
# Set name of the theme to load.
ZSH_THEME="agnoster"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(autojump docker git git-flow opp python rsync tmux virtualenv virtualenvwrapper)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/opt/gdal2/bin:/Applications/Postgres.app/Contents/Versions/10/bin:/Users/pedro/Library/Python/3.7/bin:/Users/pedro/Library/Python/3.6/bin:/usr/local/opt/sphinx-doc/bin:/Users/pedro/Library/Python/2.7/bin:$PATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=es_ES.UTF-8

build_prompt() {
        RETVAL=$?
        prompt_status
        prompt_context
        prompt_dir
        prompt_git
        prompt_end
}

alias ez='vim ~/.zshrc'
alias ev='vim ~/.vimrc'

alias wwwserve='python -m SimpleHTTPServer'

alias treed='tree -L 3 -d'
alias treef='tree -L 3'

alias -g G='| ack'
alias -g L='| less'

#alias grep='grep -RnisI --color=auto --exclude-dir={.pyc,.bzr,CVS,.git,.hg,.svn}'
#alias bgrep='/bin/grep'

alias daily="git log --reverse --branches --since=yesterday --format=format:'%C(cyan) %ad %C(yellow)%h %Creset %s %Cgreen%d' --date=local"
alias weekly="git log --reverse --branches --since='last week' --format=format:'%C(cyan) %ad %C(yellow)%h %Creset %s %Cgreen%d' --date=local"

alias load_carto_env='source /tmp/cartoenv'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/pedro/tools/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/pedro/tools/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/pedro/tools/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/pedro/tools/google-cloud-sdk/completion.zsh.inc'; fi
