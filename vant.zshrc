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
# cargo install exa
alias ls="exa  --long --git -a --header --group"
alias la="exa -lahF"
alias tree='exa --tree --level=2 --long -a --header --git'
# pacman -S fd
alias f="fd"
# bat cargo install bat
alias cat="bat"
alias gcil="gcloud compute instances list"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
#
# tldr:: npm install -g tldr
alias -g G='| ack'
alias -g L='| less'
alias -g J='| jq '
alias -g JB='| jq | bat -l json '

alias dmerge='git branch --merged | egrep -v "(^\*|master|main|dev|development|stg|staging)" | xargs git branch -d'
alias cal='ncal -Mb '
alias xps='ps -ax '
alias xpsg='ps -ax G '
source ~/x1cg9/dotdb_aliases
source /usr/share/nvm/init-nvm.sh

# added by Snowflake SnowSQL installer
export PATH=/home/perico/opt:$PATH
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit
source ~/.dbt-completion.bash
