# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/app2sales/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
# COMPLETION_WAITING_DOTS="true"

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
plugins=(
  git
  git-extras
  git-flow
  npm
  pip
  python
  wakatime
  yarn
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# Active IZI CLI. https://github.com/jkdrangel/izi
# IZI_CLI=$HOME/.izi/cli
#. $IZI_CLI/master.sh
# Active a2s cli
#alias a2s='~/Documentos/projects/a2s-cli/a2s-cli.sh $*'

# open new terminal in same dir
PROMPT_COMMAND='pwd > "${HOME}/.cwd"'
[[ -f "${HOME}/.cwd" ]] && cd "$(< ${HOME}/.cwd)"

#initialize Z (https://github.com/rupa/z) 
#. ~/z.sh 

alias cd..='cd ..'
alias gti='git $*'
alias s='sudo $*'
alias n='nautilus .'
alias le='less $*'
alias psg='ps aux | grep $*'
alias ~='cd ~'
alias -- -='cd -'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
#PATH
export JAVA_HOME=/opt/jdk1.8.0
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$JAVA_HOME/bin:$PATH
export PATH=$PATH:/opt/genymobile/genymotion
export REACT_EDITOR=code
alias studio='/opt/android-studio/bin/studio.sh $*'
#git
alias gt='git $*'
alias gta='gt add $*'
alias gts='gt status $*'
alias gtm='gt commit -m $*'
alias gtps='gt push $*'
alias gtpu='gt pull $*'
alias gtsync='gtpu && gtps $*'
alias ginit="git commit -m \":tada: "
alias glip="git commit -m \":lipstick: "
alias gbug="git commit -m \":bug: "
alias gzap="git commit -m \":zap: "
alias gart="git commit -m \":art: "
alias gdoc="git commit -m \":memo: "
alias grecycle="git commit -m \":recycle: "
alias gfeature="git commit -m \"::sparkles:: "
#React-native
alias rn='react-native $*'
alias rnra='rn run-android $*'
alias rnri='rn run-ios $*'
alias rnla='rn log-android'
alias rnclear='cd android && ./gradlew clean && cd ..'
alias rns='rn start'
alias sk='adb shell input keyevent 82'
alias reverse='adb reverse tcp:8081 tcp:8081'
alias watclear='watchman watch-del .; watchman watch-project .; rns'
#Git Flow
alias gf='git flow $*'
alias gfinit='gf init $*'
alias gffstart='gf feature start $*'
alias gfffinish='gf feature finish $*'
alias gffpublish='gf feature publish $*'
alias gffpull='gf feature pull $*'
alias gfrstart='gf release start $*'
alias gfrfinish='gf release finish $*'
alias gfrpublish='gf release publish $*'
alias gfrpull='gf release pull $*'
alias gfrtrack='gf release track $*'
alias gfhstart='gf hotfix start $*'
alias gfhfinish='gf hotfix finish $*'
alias gfhpublish='gf hotfix publish $*'
alias gfhpull='gf hotfix pull $*'
alias gfbstart='gf bugfix start $*'
alias gfbfinish='gf bugfix finish $*'
alias gfbpublish='gf bugfix publish $*'
alias gfbpull='gf bugfix pull $*'
#Firebase
alias fb='firebase $*'
alias fbls='fb list $*'
alias fbuse='fb use $*'
alias fblogin='fb login $*'
alias fbhelp='fb help $*'
alias fbinit='fb init $*'
alias fblogout='fb logout $*'
alias fbopen='fb open $*'
alias fbserve='fb serve $*'
alias fbwebsetup='fb setup:web $*'
alias fbtoolsmigrate='fb tools:migrate $*'
#FB auth
alias fbimport='fb auth:import $*'
alias fbexport='fb auth:export $*'
#FB database
alias fbget='fb database:get $*'
alias fbpush='fb database:push $*'
alias fbset='fb database:set $*'
alias fbremove='fb database:remove $*'
alias fbupdate='fb database:update $*'
alias fbprofile='fb database:profile $*'
#FB hosting/functions
alias fbdeploy='fb deploy $*'
alias fbdisable='fb hosting:disable $*'
alias fblog='fb functions:log $*'
alias fbcfgclone='fb functions:config:clone $*'
alias fbcfgget='fb functions:config:get $*'
alias fbcfgset='fb functions:config:set $*'
alias fbcfgunset='fb functions:config:unset $*'
alias vs='code . --disable-gpu'
#NPM alias 
alias ni='npm install $*'
alias nig='npm install -g $*'
alias nid='npm install --save-dev $*'
alias nt='npm test $*'
alias nit='npm install && npm test $*'
alias nis='npm install && npm start $*'
alias ns='npm start $*'
alias nsr='npm start --reset-cache $*'
