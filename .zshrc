# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="tuts+"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

### PATH ####
PATH=$HOME/bin:/opt/lampp/bin:$PATH

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"


alias zshcfg="vim ~/.zshrc"
alias vimcfg="vim ~/.vimrc"

alias vundle_install="vim +PluginInstall +qall"

alias open="nautilus"

#### GIT ####
alias gs='git status '
alias ga='git add '
alias ga.='git add .'
alias gaa='git add -A .'
alias gut='git update-index --assume-unchanged '
alias gb='git branch '
alias gbl='git branch -a --list '
alias gc='git commit'
alias gp='git push '
alias gpl='git pull '
alias gd='git diff'
alias gco='git checkout '
alias gl='git log'
alias gl2='git log -p -2' # Shows the last 2 commits with diffs
alias gh='git log --pretty=format:"%h - %s - %an, %ad" --graph --date=local' # 'One line' formated log

# cd to working tree root
alias gr='cd $(git rev-parse  --show-toplevel)'
# Run 'git rm' on all files marked as deleted
alias grm='git rm $(git ls-files --deleted)'

#### XAMPP ####
alias lampp='sudo /opt/lampp/lampp '

alias htdocs='cd /opt/lampp/htdocs/'
alias matt='cd /opt/lampp/htdocs/matt/'

#### Drush ####
export DRUSH_PHP=/opt/lampp/bin/php
alias dcca='drush cc all'

#### Node Version Manager ####
export NVM_DIR="/home/tom/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
