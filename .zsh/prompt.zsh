# Format the prompt to include useful information about actual git repository
autoload -Uz vcs_info
zstyle ':vcs_info:git*' check-for-changes true
zstyle ':vcs_info:git*' check-for-staged-changes true
zstyle ':vcs_info:git*' stagedstr "●"
zstyle ':vcs_info:git*' unstagedstr "●"
zstyle ':vcs_info:git*' actionformats "%r/%S (%b|%F{magenta}%a%f%F{default}) %F{red}%u%F{green}%c%f%F{default} "
zstyle ':vcs_info:git*' formats "%r/%S (%b) %F{red}%u%F{green}%c%f%F{default} "
precmd() { vcs_info }
setopt prompt_subst
SYMBOL="%(!.#.>)" # TODO: root, and redefine colours on git
PROMPT='${vcs_info_msg_0_}%(?.$SYMBOL.%F{red}$SYMBOL%F{default}) '
