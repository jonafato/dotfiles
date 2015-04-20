export EDITOR='vim'
export SHELL=/usr/bin/zsh

# virtualenvwrapper dir
export WORKON_HOME=~/.virtualenvs

# Python interpreter niceties
export PYTHONSTARTUP=$HOME/.pythonrc.py
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"

export PATH=$PATH:/opt/nimrod/bin  # nim-lang

export PATH=$PATH:$HOME/.linuxbrew/bin  # brew
export MANPATH=$MANPATH:$HOME/.linuxbrew/share/man  # brew manpages
export INFOPATH=$INFOPATH:$HOME/.linuxbrew/share/info  # other brew stuff

export PATH=$PATH:/usr/local/heroku/bin  # heroku toolbelt
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which pyenv > /dev/null; then
    eval "$(pyenv init -)"
    pyenv virtualenvwrapper_lazy
fi

# vi everywhere!
bindkey -v
# remove the esc lag
export KEYTIMEOUT=1

alias todo='todo.sh -d $HOME/Seafile/Seafile/todo/config'

source /etc/zsh_command_not_found

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
POWERLINE_HIDE_USER_NAME="true"
POWERLINE_HIDE_HOST_NAME="true"
POWERLINE_NO_BLANK_LINE="true"
ZSH_THEME="powerline"

ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_AUTOCONNECT=false

export TERM=xterm-256color

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git pip tmux tmuxinator vagrant)

source $ZSH/oh-my-zsh.sh
