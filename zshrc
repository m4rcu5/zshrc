#!/bin/zsh

ZSH=$HOME/.zsh

# Load all of the config files that end in .zsh
for config_file ($ZSH/<00-99>_*.zsh) source $config_file

# Autoload zsh functions.
autoload -U $ZSH/functions/*(:t)

unset ZSH
