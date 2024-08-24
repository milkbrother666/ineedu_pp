# 获取当前的git分支名称
get_git_branch() {
  git branch --show-current 2>/dev/null
}

# 定义颜色
yellow="%F{yellow}"
green="%F{green}"
white="%F{white}"
red="%F{red}"
pink="%F{magenta}"
reset_color="%f"

# 自定义主题的PROMPT
PROMPT='[%{$yellow%}%n%{$reset_color%}@%{$white%}%{$green%}%m%{$reset_color%} %{$white%}%1~%{$reset_color%}'
PROMPT+='$(git_branch=$(get_git_branch); if [ -n "$git_branch" ]; then echo " %{$pink%}$git_branch%{$reset_color%}"; fi)'
PROMPT+='] %{$red%}%(!.#.$)%{$reset_color%} '