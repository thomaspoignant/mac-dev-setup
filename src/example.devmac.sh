# ~ cat /Users/danielchu/.macsetup/macsetup_profile 
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/opt/sqlite/bin:$PATH"
if type brew &>/dev/null; then
  autoload -Uz compinit
  compinit
  export FPATH="/usr/local/share/zsh/functions:$FPATH" #https://github.com/ohmyzsh/ohmyzsh/issues/4607
fi
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
. /usr/local/etc/profile.d/z.sh

export NVM_DIR="/Users/danielchu/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# this for vscode https://github.com/microsoft/vscode/issues/113869#issuecomment-780072904


# Go development
export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
eval "$(pyenv init -)"
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH="$PATH:${HOME}/src/flutter/bin"