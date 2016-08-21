# Format the prompt to include useful information about actual git repository
autoload -Uz vcs_info
zstyle ':vcs_info:git*' check-for-changes true
zstyle ':vcs_info:git*' check-for-staged-changes true
zstyle ':vcs_info:git*' stagedstr "●"
zstyle ':vcs_info:git*' unstagedstr "●"
zstyle ':vcs_info:git*' actionformats "%r/%S (%b|%F{5}%a%f) %F{1}%u%F{2}%c%f "
zstyle ':vcs_info:git*' formats "%r/%S (%b) %F{1}%u%F{2}%c%f "
precmd() { vcs_info }
setopt prompt_subst
PROMPT='${vcs_info_msg_0_}%\> '
