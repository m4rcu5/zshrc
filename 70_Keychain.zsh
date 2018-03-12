#
# SSH Keychain
#

if [ `whoami` != 'root' ]; then
    if which keychain &> /dev/null; then
        keys=(~/.ssh/id_(ed2551|[rd]sa)^*.pub)

        keychain --inherit any-once --agents ssh --quiet $keys
        [[ -e ~/.keychain/${HOST}-sh ]] && . ~/.keychain/${HOST}-sh
    fi
fi
