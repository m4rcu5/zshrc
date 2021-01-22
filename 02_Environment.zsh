#
# ENV
#

export PATH=~/bin:$PATH:/sbin:/usr/sbin
export PAGER=less

# Set some standard options for our pager (less)
# -i  = Causes searches to ignore case
# -q  = Disable terminal bell
# -R  = Output "raw" control characters. (colors)
# -s  = Squeeze multiple blank lines.
# -S  = Causes lines longer than the screen width to be chopped
#         (truncated) rather than wrapped.
# -x4 = Set tab stops to 4 spaces.
export LESS='-iqRsSx4'

# Use source highlighting if available
if $(command -v src-hilite-lesspipe.sh &>/dev/null); then
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
