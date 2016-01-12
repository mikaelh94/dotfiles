local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"
PROMPT='%{$fg_bold[blue]%}%m %{$fg[cyan]%}%(!.%1~.%~) $(git_prompt_info)%{$fg_bold[blue]%} ${ret_status}%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[red]%}[%{$fg_bold[yellow]%} "
ZSH_THEME_GIT_PROMPT_SUFFIX=" %{$fg_bold[red]%}] "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg_no_bold[red]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg_no_bold[green]%}✔"
