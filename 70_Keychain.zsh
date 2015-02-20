#
# SSH Keychain
#

if [ `whoami` != 'root' ]; then
    if which keychain &> /dev/null; then
    	keys=(~/.ssh/id_[rd]sa^*.pub)

        keychain --inherit any-once --agents ssh --quiet $keys
        [[ -e ~/.keychain/${HOST}-sh ]] && . ~/.keychain/${HOST}-sh
    fi
fi
