alias x="exit"
alias sb="source ~/.bash_profile"
alias hc="history -c"

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

[ -f ~/.kubectl_aliases ] && source ~/.kubectl_aliases
export PATH="$HOME/.cargo/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/rafaribe/.sdkman"
[[ -s "/Users/rafaribe/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/rafaribe/.sdkman/bin/sdkman-init.sh"

complete -C /usr/local/bin/terraform terraform
