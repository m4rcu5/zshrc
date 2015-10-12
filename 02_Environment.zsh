#
# ENV
#

export PATH=~/bin:$PATH:/sbin:/usr/sbin
export PAGER=less
export LESS='--ignore-case --silent --RAW-CONTROL-CHARS --chop-long-lines'

# Use source highlighting if available
if which src-hilite-lesspipe.sh &> /dev/null; then
    export LESSOPEN="| src-hilite-lesspipe.sh %s"
fi

# Allows to kill backward word path by path using ctrl+w
export WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

# Debian chroot detection
if [[ -z "$DEBIAN_CHROOT" ]] && [[ -r /etc/debian_chroot ]]; then
    export DEBIAN_CHROOT=$(cat /etc/debian_chroot)
fi

# Report timing statistics for commands that take more than this, in seconds
REPORTTIME=5
TIMEFMT="$( print -P %F{cyan} )time:$( print -P %f ) %U user %S system %P cpu %*E total  %J"

#
# Dircolors
#

if [[ -a "$ZSH/LS_COLORS" ]]; then
    which dircolors > /dev/null && eval $(dircolors -b $ZSH/LS_COLORS 2>/dev/null)
else
    which dircolors > /dev/null && eval $(dircolors -b)
fi
