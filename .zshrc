# The following lines were added by compinstall
zstyle ':completion:*' completer _list _expand _complete _ignored _correct
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' menu select=2
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_histfile
HISTSIZE=5000
SAVEHIST=5000
setopt appendhistory
setopt sharehistory
setopt incappendhistory
setopt extendedglob
setopt nomatch
# End of lines configured by zsh-newuser-install


# Setup access of the online help
unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/help

# Activate the auto-suggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Environment variables
export FPATH=/usr/local/share/zsh/site-functions/:$FPATH
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export GOPATH=$HOME/Documents/workspace/gocode
export PATH=$PATH:$GOPATH/bin
export GREP_OPTIONS="--color=always"
