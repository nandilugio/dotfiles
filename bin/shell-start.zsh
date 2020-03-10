# Update!
pushd ~/shell-config; git pull; popd

# Python
PATH=~/Library/Python/2.7/bin:$PATH

# Pipx (more generic?)
PATH=~/.local/bin:$PATH

# Pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# PyInvoke
# Generated using `inv --print-completion-script zsh`
_complete_invoke() {
    collection_arg=''
    if [[ "${words}" =~ "(-c|--collection) [^ ]+" ]]; then
        collection_arg=$MATCH
    fi
    reply=( $(invoke ${=collection_arg} --complete -- ${words}) )
}
compctl -K _complete_invoke + -f invoke inv
# vim: set ft=sh :

# Rbenv
#eval "$(rbenv init -)"

# Me
PATH=~/bin:$PATH
PS1=$PS1$'\n'"%# "  # Newline after prompt
alias g=git

