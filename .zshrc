# Path to your oh-my-zsh installation.
export ZSH=/Users/lucacherubin/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="fino"

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
plugins=(git brew sublime sudo osx python npm mvn common-aliases bower)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
# export MANPATH="/usr/local/man:$MANPATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias h="history"
alias rmd="rm -d"
alias frm="rm -f"
alias frmd="rm -f -d"
alias frmdr="rm -f -d -r"
alias ql="/usr/bin/qlmanage"
alias lines="wc -l <"
alias szsh="source ~/.zshrc"
alias ezsh="vim ~/.zshrc"
alias cppath="pwd | pbcopy"
alias cd..="cd .."
alias cd...="cd ../.."
alias cd....="cd ../../.."
alias cd.....="cd ../../../.."
alias tr="trash"
alias py="python"
alias py3="python3"

source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh  
. `brew --prefix`/etc/profile.d/z.sh

# source /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

bindkey '\e.' insert-last-word

function mkdircd () {
  mkdir -p "$@" && eval cd "\"\$$#\"";
}

function fname () {
	find . -name "*$@*";
}

function sf() {
	sort --output="$@" "$@";
}

function sfr() {
	sort --output="$@" --reverse "$@";
}

function purge() {
  rm -fr "$@"/*;
}

function ppath() {
  cd $(pbpaste);
}

function xls() {
	open "$@" -a /Applications/Microsoft\ Excel.app;
}

function doc() {
	open "$@" -a /Applications/Microsoft\ Word.app;
}

function ppt() {
	open "$@" -a /Applications/Microsoft\ PowerPoint.app;
}

function findsub() {
    find ~/Projects/Submissions -type f | grep "$@";
}

function vs() {
   open "$@" -a /Applications/Visual\ Studio\ Code.app;
}

autoload -U zmv
alias mmv='noglob zmv -W'
export PATH="/usr/local/sbin:$PATH"
export ASAFOR="$HOME/Projects/FromGit/wp-vvv/www/wordpress-default/wp-content"
alias mvim="/Applications/MacVim.app/Contents/MacOS/Vim -g"
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias nvimg="/Applications/Neovim.app/Contents/MacOS/Neovim"
alias pyserve="python -c \"import SimpleHTTPServer; m = SimpleHTTPServer.SimpleHTTPRequestHandler.extensions_map; m[''] = 'text/plain'; m.update(dict([(k, v + ';charset=UTF-8') for k, v in m.items()])); SimpleHTTPServer.test();\""

# Set Umask to 002 -> User and Group have both rw permissions
umask 002
source ~/Projects/FromGit/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
