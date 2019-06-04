# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
export LESSCHARSET=utf-8

# User specific aliases and functions

alias ll='ls -la'
alias rm='rm -i'

source ~/.git-completion.bash
source ~/.git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

# export PS1="\[\033[34m\]\h\[\033[0m\]:\u \[\033[33m\]\W\[\033[0m\] \[\033[31m\]$(__git_ps1 "[%s]")\[\033[0m\]\$ "
export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi



# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /usr/local/var/nodebrew/node/v10.4.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /usr/local/var/nodebrew/node/v10.4.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /usr/local/var/nodebrew/node/v10.4.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /usr/local/var/nodebrew/node/v10.4.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash

