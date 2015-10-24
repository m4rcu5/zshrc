[[ $(uname -s) == "Darwin" ]] || return

if which brew > /dev/null
then
    if [ ! -f "$ZSH/cache/coreutils_path" ]
    then
        brew --prefix coreutils > "$ZSH/cache/coreutils_path"
    fi
    BREW_COREUTILS=$(cat "$ZSH/cache/coreutils_path")
fi

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
