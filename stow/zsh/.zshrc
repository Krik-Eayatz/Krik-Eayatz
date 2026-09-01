ENV_ACTIVE_COLOR="#a6e3a1"    # green
ENV_REMINDER_COLOR="#f38ba8"  # red
TIME_COLOR="#f9e2af"          # yellow
USER_COLOR="#74c7ec"          # sapphire
PATH_COLOR="#cba6f7"          # mauve
GIT_COLOR="#fab387"           # peach
TEXT_COLOR="#1e1e2e"          # deep navy-gray

function venv_info() {
  if [[ -n "$VIRTUAL_ENV" ]]; then
    local project_dir="${VIRTUAL_ENV:h}"
    if [[ "$PWD" == "$project_dir" || "$PWD" == "$project_dir"/* ]]; then
      echo "%F{$ENV_ACTIVE_COLOR}%f%K{$ENV_ACTIVE_COLOR}%F{$TEXT_COLOR}${VIRTUAL_ENV:t}%k%f%F{$ENV_ACTIVE_COLOR}%K{$TIME_COLOR} %f%k"
    else
      echo "%F{$ENV_REMINDER_COLOR}%f%K{$ENV_REMINDER_COLOR}%F{$TEXT_COLOR}${VIRTUAL_ENV:t}%k%f%F{$ENV_REMINDER_COLOR}%K{$TIME_COLOR} %f%k"   # gray = active but elsewhere
    fi
  else
    echo "%F{$TIME_COLOR}%f"
  fi
}

rerender_prompt() {
    date="%K{$TIME_COLOR}%F{$TEXT_COLOR}%T%k%f%F{$TIME_COLOR}%K{$USER_COLOR}%f%k"
    user="%K{$USER_COLOR}%F{$TEXT_COLOR} %n@%m%k%f%F{$USER_COLOR}%K{$PATH_COLOR}%f%k"
    current_path="%K{$PATH_COLOR}%F{$TEXT_COLOR} %1~%k%f"
    if branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null); then
        git_branch="%F{$PATH_COLOR}%K{$GIT_COLOR}%f%k%K{$GIT_COLOR}%F{$TEXT_COLOR} 󰊢 $branch%k%f%F{$GIT_COLOR}%f "
        PROMPT="$(venv_info)${date}${user}${current_path}${git_branch}"
    else
        no_git_branch="%F{$PATH_COLOR}%f "
        PROMPT="$(venv_info)${date}${user}${current_path}${no_git_branch}"
    fi
}

# addes the rerender_prompt function to the list of functions that are called before each prompt is displayed
precmd_functions+=(rerender_prompt)

# set aliases
alias uconfig="cd ~/Krik-Eayatz" # alias to quickly navigate to the dotfiles repo
alias cdmr="cd ~/Desktop/Development/Remote\ Repositories/Mercer" # alias to quickly navigate to remote repositories
alias cdpr="cd ~/Desktop/Development/Remote\ Repositories/Private" # alias to quickly navigate to private remote repositories
alias cdml="cd ~/Desktop/Development/Local\ Repositories/Mercer" # alias to quickly navigate to local repositories
alias cdpl="cd ~/Desktop/Development/Local\ Repositories/Private" # alias to quickly navigate to private local repositories

