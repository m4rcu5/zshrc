#
# As you type auto command suggestions
#
local PLUGIN='/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh'

# Load plugin
if [ -f ${PLUGIN} ]; then
    source ${PLUGIN}
fi

# Use suggestions from completions aswell
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# Run asynchronous, for speed
ZSH_AUTOSUGGEST_USE_ASYNC=1

# Stop autuosuggestions after 40 chars
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=40

# The default colour is hard to see
if zmodload zsh/terminfo && (( terminfo[colors] >= 256 )); then
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=241'
else
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=005'
fi
