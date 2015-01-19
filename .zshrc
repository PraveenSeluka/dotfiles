# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"
setopt correct
# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
DISABLE_LS_COLORS="true"

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

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git python yum history-substring-search web-search jira rake rails)
source $ZSH/oh-my-zsh.sh

# User configuration


# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
# Compilation flags
# export ARCHFLAGS="-arch x86_64"
export HISTSIZE=1000000
# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
#from bashrc
alias pysite='cd /usr/lib/python2.6/site-packages'
alias sbrc='source ~/.bashrc'
alias vbrc='vim ~/.bashrc'
alias vzrc='vim ~/.zshrc'
alias szrc='source ~/.zshrc'
alias fin='find . -iname'
alias cool='echo "oh vow, cool, job well done"'
alias hack='echo "let the hacking begin"'
alias nt='netstat -tuplen'
alias cl='clear';
alias pg='ps -ef | grep'

#eval `dircolors /usr/src/dircolors/dircolors-solarized/dircolors.ansi-dark`
#alias grep='grep --color'
#alias ls='ls --color=auto'
#
#export TERM="screen-256color"
alias tmux="tmux -2"


# jira plugin
JIRA_URL="https://qubole.atlassian.net"


#no autocrrects
alias gcutil='nocorrect gcutil'
alias ack='nocorrect ack'
alias jgrep='nocorrect jgrep'
alias pgrep='nocorrect pgrep'
alias thl='nocorrect thl'


alias jgrep='nocorrect find . -iname "*.java" | xargs grep -rni'
alias pgrep='nocorrect find . -iname "*.py" | xargs grep -rni'
