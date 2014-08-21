# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# i like nebirhos
ZSH_THEME="rbates"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
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
plugins=(git osx)

# Added steve - To fix failed autocompletion of dotfiles, eg "git add .oh<tab>"
# http://stackoverflow.com/questions/9810327/git-tab-autocompletion-is-useless-can-i-turn-it-off-or-optimize-it/9810485#9810485
__git_files () {
    _wanted files expl 'local files' _files
}

source $ZSH/oh-my-zsh.sh

source $HOME/.shrc

# Customize to your needs...
# export PATH=$PATH:/Users/stevehanson/.gvm/vertx/current/bin:/Users/stevehanson/.gvm/springboot/current/bin:/Users/stevehanson/.gvm/lazybones/current/bin:/Users/stevehanson/.gvm/groovyserv/current/bin:/Users/stevehanson/.gvm/groovy/current/bin:/Users/stevehanson/.gvm/griffon/current/bin:/Users/stevehanson/.gvm/grails/current/bin:/Users/stevehanson/.gvm/gradle/current/bin:/Users/stevehanson/.rvm/gems/ruby-2.0.0-p195/bin:/Users/stevehanson/.rvm/gems/ruby-2.0.0-p195@global/bin:/Users/stevehanson/.rvm/rubies/ruby-2.0.0-p195/bin:/Users/stevehanson/.rvm/bin:/Applications/MAMP/bin/php/php5.4.10/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/local/gradle-1.5/bin:/usr/local/rabbitmq_server-3.0.4/sbin:/usr/local/mongodb-osx-x86_64-2.4.2/bin:/Users/stevehanson/dev/app/Play-2.1.1:/Users/stevehanson/bin:/Users/stevehanson/dev/app/grails-2.2.4/bin:/opt/local/bin:/usr/local/freetds/bin:/Users/stevehanson/scripts

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export NVM_DIR="/Users/shanson/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm