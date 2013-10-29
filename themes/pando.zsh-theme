# ZSH Theme - Preview: http://gyazo.com/8becc8a7ed5ab54a0262a470555c3eed.png
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local user_host='%{$terminfo[bold]$fg[red]%}%n%{$terminfo[bold]$fg[green]%}@%m%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[blue]%}${PWD/#$HOME/~}%{$reset_color%}'
local git_branch='$(git_prompt_info)%{$reset_color%}'
local time='%{$fg[cyan][%U%D-%*%u]%}'

PROMPT="╭─${user_host} ${time} ${current_dir} ${git_branch}
╰─%B$%b "
RPS1="${return_code}"

git_color="%{$fg[yellow]%}"
git_dirty="%{$fg[red]%}"
git_clean="%{$fg_bold[green]%}"
ZSH_THEME_GIT_PROMPT_PREFIX="[${git_color}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}]"
ZSH_THEME_GIT_PROMPT_DIRTY="${git_dirty} ✗${git_color}"
ZSH_THEME_GIT_PROMPT_CLEAN="${git_clean} ✓${git_color}"
