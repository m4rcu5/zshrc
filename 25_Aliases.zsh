#
# Aliases
#

# Easy dir changing
alias ..='cd ..; ls'
alias ...='cd ../..; ls'
alias ....='cd ../../..; ls'

# No spelling correction
alias cp='nocorrect cp'
alias mkdir='nocorrect mkdir'
alias mv='nocorrect mv'
alias rm='nocorrect rm'

# Adding color to our commands
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Some short hand commands
alias l='ls -lF'
alias ll='ls -lh --time-style=long-iso'
alias lt='ll -rt'
alias ns='netstat -ltup'
alias j='jobs'
alias gen_pass='< /dev/urandom tr -dc .$_A-Z-a-z-0-9 | head -c12; echo'

# Week starts on mondy
alias cal='cal -m'

# Ssh without KnownHosts
alias sshc='ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'
alias scpc='scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'



#
# Global Aliases
#

# zsh buch s.82 (z.B. find / ... NE)
alias -g NE='2>|/dev/null'
alias -g NO='&>|/dev/null'

# http://rayninfo.co.uk/tips/zshtips.html
alias -g G='| grep -'
alias -g P='2>&1 | $PAGER'
alias -g L='| less'
alias -g LA='2>&1 | less'
alias -g M='| most'
alias -g C='| wc -l'
