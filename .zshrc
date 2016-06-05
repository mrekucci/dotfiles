# Add path with auto-complete scripts into the fpath
fpath=(/usr/local/share/zsh/site-functions/ $fpath)

# The following lines were added by compinstall
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' expand prefix
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list '' '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'l:|=* r:|=*'
zstyle :compinstall filename '/Users/mrekucci/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Setup access of the online help
unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/help

# Activate the auto-suggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# History configuration
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=5000
setopt appendhistory
setopt sharehistory
setopt incappendhistory
