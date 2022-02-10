# put branch in PS1
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e ' s/* \(.*\)/(\1)/'
}

# set up the colors on my shell
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[35m\]\h:\[\033[33m\]\w\[\033[37m\]\$(parse_git_branch)\[\033[m\]$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# alias common commands
alias ls='ls -GFh --color=auto'
alias rm='rm -i'
