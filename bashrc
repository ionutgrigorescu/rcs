### Add Git Status to bash prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\]$ "

#### Change terminal title
PROMPT_COMMAND='echo -ne "\033]0;${PWD}\007"'

alias tmux="TERM=screen-256color-bce tmux"
