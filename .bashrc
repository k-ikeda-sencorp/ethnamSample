# .bashrc
# Source global definitions

if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

PS1="\[\e[1;34m\][\u@\h:\w]\$\[\e[00m\]"

if [ -f  ~/.git-prompt.sh ]; then
    source ~/.git-prompt.sh
    GIT_PS1_SHOWDIRTYSTATE=true
    PS1='\[\e[1;34m\][\u@\h:\w]\[\033[31m\]$(__git_ps1)\[\e[1;34m\]\$\[\e[00m\]'
fi

# User specific aliases and functions

export LANG=en_US.UTF-8
export TERM=xterm-256color

alias ls='ls --color=auto'
alias ll='ls -l --color'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ll='ls -l'
alias grep='grep -E'
alias tmux='tmux -u'

export HISTSIZE=50000
export HISTFILESIZE=50000
export HISTCONTROL=ignoreboth
export HISTTIMEFORMAT="%y/%m/%d %H:%M:%S  "

export GREP_COLOR='1;37;41'
export GREP_OPTIONS='--binary-files=without-match --color=auto'
export LS_COLORS='di=01;36;40:'
export LSCOLORS=gxfxcxdxbxegedabagacad
export PAGER=less
export EDITOR="vim"
export LESS='-X -R -i -P ?f%f:(stdin).  ?lb%lb?L/%L..  [?eEOF:?pb%pb\%..]'
export LESSOPEN='| /usr/bin/lesspipe.sh %s'
export LESSCHARSET=utf-8

shopt -s histverify
shopt -s histappend
shopt -s histreedit
shopt -s checkwinsize
shopt -s checkhash
shopt -s no_empty_cmd_completion

complete -d cd
complete -c which
complete -c sudo
complete -v unset
