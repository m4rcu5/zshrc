#!/bin/zsh

export ZSH=$HOME/.zsh

fpath=(${ZSH}/{functions,completions}(/FN) $fpath)

# Load all of the config files that end in .zsh
for conf in ${ZSH}/<00-99>_*.zsh(N); do
    source $conf
done

# Autoload zsh functions.
for func in ${ZSH}/functions/[^_.]*(N:t); do
    autoload -Uz $func
done

unset ZSH
