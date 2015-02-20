#!/bin/zsh

ZSH=$HOME/.zsh

# Autoload zsh functions.
fpath=($ZSH/functions $fpath)
autoload -U $ZSH/functions/*(:t)

# Load all of the config files that end in .zsh
for config_file ($ZSH/*.zsh) source $config_file

unset ZSH
