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
# DISABLE_AUTO_TITLE="true"

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
HIST_STAMPS="yyyy/mm/dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git npm nvm bower rsync zsh_reload web-search docker)

# User configuration

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


alias zshcfg='vim ~/.zshrc'
alias zc='vim ~/.zshrc'
alias zs='source ~/.zshrc'
alias vimcfg='vim ~/.vimrc'

alias m_packages='cd ~/.meteor/packages/'

alias vundle_install="vim +PluginInstall +qall"

alias open='nautilus'

alias pserver='python -m SimpleHTTPServer'

#### GIT ####
alias gs='git status'
alias ga.='git add .'
alias gaaac='git add .; git commit' # Add all and commit
alias gau='git update-index --assume-unchanged'
alias gpl='git pull'
alias gl='git log'

# 'One line' formated log
alias gh='git log --pretty=format:"%h%Cblue%d%Creset %s - %an, %ad" --graph --date=local'
alias gha='git log --pretty=format:"%h%Cblue%d%Creset %s - %an, %ad" --graph --all --date=local'

# cd to working tree root
alias gr='cd $(git rev-parse  --show-toplevel)'
# Run 'git rm' on all files marked as deleted
alias grm='git rm $(git ls-files --deleted)'

#### XAMPP ####
alias lampp='sudo /opt/lampp/lampp '

alias htdocs='cd /opt/lampp/htdocs/'
alias matt='cd /opt/lampp/htdocs/matt/'
alias cdtnd='cd /opt/lampp/htdocs/matt/natural-dispensary/'
alias cdnc='cd /opt/lampp/htdocs/matt/natural-centre/'
alias cdrev='cd /opt/lampp/htdocs/matt/revolution/'
alias cdlnw='cd /opt/lampp/htdocs/matt/lewis-and-wood/'
alias cdhilles='cd /opt/lampp/htdocs/matt/hilles-house-wp/'

# export PATH="/opt/lampp/bin:$PATH"


####
# Update current directory perms and all sub-dirs/files recursively
# (intended for WP uploads dir)
####
function uploads_file_perms () {
  echo "This will update the perms of the current directory and it's children."

  sudo chgrp -R daemon .
  sudo chmod g+ws .

  find . -type d -exec chmod g+ws {} \;
  find . -type f -exec chmod 664 {} \;
}


#### Drush ####
# export DRUSH_PHP='/opt/lampp/bin/php'
alias dcca='drush cc all'

#### Composer ####
export PATH="$HOME/.composer/vendor/bin:$PATH"


#### Node Version Manager ####
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

export NVM_NODEJS_ORG_MIRROR=http://nodejs.org/dist


#### pyenv ####
PYENV_ROOT="$HOME/.pyenv"
PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


#### Android SDK ####
export ANDROID_HOME="$HOME/Android/Sdk"
export PATH="$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"

#### Go ####
export GOPATH="$HOME/gopath"
export PATH="$GOPATH:$GOPATH/bin:$PATH"


#### Docker ####
alias dcu="docker-compose up"

