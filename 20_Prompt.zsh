# Enable hook method
autoload add-zsh-hook

# Enable and configure vcs_info
autoload -Uz vcs_info
add-zsh-hook precmd vcs_info

zstyle ':vcs_info:*' enable hg git cvs svn
zstyle ':vcs_info:*' check-for-changes true

zstyle ':vcs_info:*' stagedstr ':S'
zstyle ':vcs_info:*' unstagedstr ':U'

zstyle ':vcs_info:(hg|git):*' actionformats '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}%c%u%m|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:(hg|git):*' formats '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{5}%c%u%m]%f '

# Prompt theme
function promptSetup () {
    setopt prompt_subst

    # color support for root
    if [ "$USER" = 'root' ]; then
        base_prompt="%B%F{red}%m%k "
    else
        base_prompt="%B%F{green}%n@%m%k "
    fi

    # prefixes
    post_prompt="%b%f%k"
    jobs_prompt="%(?..%B%F{yellow}<%?>)%(1j.%B%F{cyan}{%j}.)"
    chrt_prompt="%F{red}(%f${DEBIAN_CHROOT}%F{red})%f"
    path_prompt="%B%F{yellow}%1~"

    # left prompts
    PS1="$jobs_prompt$base_prompt$path_prompt %# $post_prompt"
    PS2="$jobs_prompt$base_prompt$path_prompt %_> $post_prompt"
    PS3="$jobs_prompt$base_prompt$path_prompt ?# $post_prompt"
    PS4="+%B%* %F{cyan}%N%f:%F{yellow}%i%f>%b "

    # right prompt
    RPROMPT="${DEBIAN_CHROOT:+$chrt_prompt }${vcs_info_msg_0_}"
}
add-zsh-hook precmd promptSetup
