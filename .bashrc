#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -a --color=auto'

#Load in the git branch prompt script.
source ~/.git-prompt.sh

# PS1='[\u@\h \W]\$ '

# Colored Prompt with Git
PS1='[\u@\h \W]\[\e[0;32m\]$(__git_ps1 " (%s)")\[\e[m\]\$ '

