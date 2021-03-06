#
# Options
#

# Remove  any right prompt from display when accepting a command line. This may be useful with terminals with other cut/paste methods.
setopt transient_rprompt
# Allow completion from within a word/phrase
setopt complete_in_word
# When completing from the middle of a word, move the cursor to the end of the word
setopt always_to_end
# Completion correction : 'sl' instead of 'ls'
setopt correct
# If you type foo, and it isn't a command, and it is a directory in your cdpath, go there
setopt autocd
# Make cd push the old directory onto the directory stack.
setopt auto_pushd
# Don’t push multiple copies of the same directory onto the directory stack.
setopt pushd_ignore_dups
# Allow comments even in interactive shells
setopt interactive_comments
# Report the status of background jobs immediately, rather than waiting until just before printing a prompt
setopt notify
# List jobs in the long format
setopt long_list_jobs
# Don't kill background jobs on logout
setopt nohup
# Allow functions to have local options
setopt local_options
# Allow functions to have local traps
setopt local_traps
# DON NOT Allow ‘>’ redirection to truncate existing files, and ‘>>’ to create files. Otherwise ‘>!’ or ‘>|’ must be used to truncate  a file, and ‘>>!’ or ‘>>|’ to create a file.
setopt no_clobber
# Treat  the ‘#’, ‘~’ and ‘^’ characters as part of patterns for filename generation, etc.  (An initial unquoted ‘~’ always produces named directory expansion.)
setopt extended_glob
# If a pattern for filename generation has no matches, print an error, instead of leaving it unchanged in the argument  list. This also applies to file expansion of an initial ‘~’ or ‘=’.
setopt nomatch


#
# History
#

# Different History files for chroots
if [[ ! -z $DEBIAN_CHROOT ]]; then
    HISTFILE=$HOME/.cache/zsh/history_$DEBIAN_CHROOT
else
    HISTFILE=$HOME/.cache/zsh/history
fi
SAVEHIST=100000
HISTSIZE=120000

# Share history betwen multiple termional sessions
setopt share_history
# Append history, instead of replace, when a terminal session exits
setopt appendhistory
# Add commands as they are typed, don't wait until shell exit
setopt inc_append_history
# Ignore commands with a space before
setopt hist_ignore_space
# Remove the old entry and append the new one
setopt hist_ignore_all_dups
# When searching history don't display results already cycled through twice
setopt hist_find_no_dups
# Remove extra blanks from each command line being added to history
setopt hist_reduce_blanks
# Add timestamps to history
setopt extended_history
