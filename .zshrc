# Instalar siempre el plugin zsh-autosuggestions

export ZSH="$HOME/.oh-my-zsh"

plugins=(
    git
    # Customs plugins
    zsh-autosuggestions
)

ZSH_THEME="robbyrussell"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#888888'

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='nvim'
else
    export EDITOR='vim'
fi

# Env


PATH=$PATH
# PATH=$HOMEBREW:$NODE:$PATH