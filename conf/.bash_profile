PS1="\n\\[\033[32m\][\t] \w \[\033[1;31m\]\$(git branch 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/{\1}/')\n\[\033[36m\]\u@\h $ \[\033[0m\]"

alias ll="ls -lG"