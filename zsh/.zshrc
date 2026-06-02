TIME_COLOR="#b8f2d0"    # mint
USER_COLOR="#89b4fa"    # pastel blue
PATH_COLOR="#d7b8ff"    # lavender
GIT_COLOR="#ffc6a8"     # peach
TEXT_COLOR="#1e1e2e"    # deep navy-gray

rerender_prompt() {
    date="%F{$TIME_COLOR}%f%K{$TIME_COLOR}%F{$TEXT_COLOR}%T %k%f%F{$TIME_COLOR}%K{$USER_COLOR}%f%k"
    user="%K{$USER_COLOR}%F{$TEXT_COLOR} %n@%m%k%f%F{$USER_COLOR}%K{$PATH_COLOR}%f%k"
    current_path="%K{$PATH_COLOR}%F{$TEXT_COLOR} %~%k%f"
    if branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null); then
        git_branch="%F{$PATH_COLOR}%K{$GIT_COLOR}%f%k%K{$GIT_COLOR}%F{$TEXT_COLOR} $branch%k%f%F{$GIT_COLOR}%f "
        PROMPT="${date}${user}${current_path}${git_branch}"
    else
        no_git_branch="%F{$PATH_COLOR}%f "
        PROMPT="${date}${user}${current_path}${no_git_branch}"
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