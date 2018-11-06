# Source project paths so they are globally accessible
source $HOME/dotfiles/vars.sh
source $HOME/dotfiles/aliases.sh
source $HOME/dotfiles/functions.sh

# vscode
function code {
  if [[ $# = 0 ]]
  then
    open -a "Visual Studio Code"
  else
    local argPath="$1"
    [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
    open -a "Visual Studio Code" "$argPath"
  fi
}

# change terraform (homebrew doesnt allow you too specify a terraform version)
# Source chtf
if [[ -f /usr/local/share/chtf/chtf.sh ]]; then
    source "/usr/local/share/chtf/chtf.sh"
fi

# awscli
export PATH=Library/Python/3.6/bin:$PATH

# functions
source $DOTFILES_PATH/functions.sh

# RVM
export PATH="$PATH:$HOME/.rvm/bin"

export PATH="$PATH:$HOME/workspace/liqid/liqid-infrastructure/bin"
autoload -U promptinit; promptinit
prompt pure

HISTSIZE=300
# env vars for docker + dinghy
# export DOCKER_HOST=tcp://192.168.64.2:2376
# export DOCKER_CERT_PATH=/Users/varun/.docker/machine/machines/dinghy
# export DOCKER_TLS_VERIFY=1
# export DOCKER_MACHINE_NAME=dinghy
# export LOGENTRIES_RW_KEY=ca66e911-fa0d-48eb-b121-69e56423bbb4

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/roonie/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/roonie/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/roonie/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/roonie/Downloads/google-cloud-sdk/completion.zsh.inc'; fi