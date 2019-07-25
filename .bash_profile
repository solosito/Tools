# Git status
parse_git_dirty() {
 [[ -n "$(git status -s 2> /dev/null)" ]] && echo -e '\033[1;31m'
}

# Git branch in prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ $(parse_git_dirty)(\1)/"
}

# Git completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Colorful terminal
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$(parse_git_branch)\[\033[00m\]$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Aliases
alias l='ls -GFh'
alias ls='ls -GFh'
alias ll='ls -lGaf'

# Make bash history longer
export HISTFILESIZE=1000000
export HISTSIZE=1000000
