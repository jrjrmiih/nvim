export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export VISUAL=nvim
export EDITOR=nvim

# oh-my-zsh
export ZSH=/Users/zhanglei/.oh-my-zsh
ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"
plugins=(git z zsh-syntax-highlighting zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

# alias
alias vpnon="export http_proxy=http://127.0.0.1:1080;export https_proxy=http://127.0.0.1:1080;"
alias vpnoff="export http_proxy=;export https_proxy=;"
alias glgg="git log --graph --decorate"

# user
export MAC_USER=/Users/zhanglei

# default PATH
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin

# brew
export HOMEBREW_BREW_GIT_REMOTE="git://mirrors.ustc.edu.cn/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="git://mirrors.ustc.edu.cn/homebrew-core.git"
export PATH="/opt/homebrew/bin:$PATH"

# arcanist
ARC_PATH="$MAC_USER/Library/arcanist/bin"
export PATH="$ARC_PATH:$PATH"

# pyenv
eval "$(pyenv init -)"
export PATH="$MAC_USER/.pyenv/shims:$PATH"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# zsh-autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=black'
ZSH_AUTOSUGGEST_STRATEGY=(history)
