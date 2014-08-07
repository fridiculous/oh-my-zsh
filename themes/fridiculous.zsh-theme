#simonfrid
#fridiculous prompt

#PROMPT='%{$fg_bold[white]%}[%{$fg_bold[green]%}%W %*%{$fg_bold[white]%}]%{$fg[magenta]%}%~%{$fg_bold[blue]%}$(git_prompt_info)%{$reset_color%}
#%{$fg_bold[white]%}%% %{$reset_color%}'

PROMPT='%{$fg[white]%}[%{$fg[green]%}%W %*%{$fg[white]%}]%{$fg[magenta]%}%~%{$fg[blue]%}$(git_prompt_info)%{$reset_color%}
%{$fg[white]%}%% %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY=" ✗"
ZSH_THEME_GIT_PROMPT_CLEAN=" ✔"

