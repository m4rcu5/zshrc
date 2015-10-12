[[ $(uname -s) == "Darwin" ]] || return

BREW_COREUTILS=$(brew --prefix coreutils)

if [ -d $BREW_COREUTILS ]; then
    # let GNU coreutils installed by brew take preecedence on Mac systems
    export PATH="${BREW_COREUTILS}/libexec/gnubin:$PATH"
    export MANPATH="${BREW_COREUTILS}/libexec/gnuman:$MANPATH"
else
    # the OSX way for ls colors.
    export CLICOLOR=1
    # TODO: we should add an LSCOLORS here..
fi

# add homebrew's zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)
