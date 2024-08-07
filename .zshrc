# ALIAS SETTINGS
# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
# online judge's aliases
alias ojt='oj t -c "./a.out"'
alias ojs='oj s main.cpp -y'
# lazygit alias
alias lg='lazygit'

# PATH SETTINGS
# homebrew's path
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
# path to user's binary file
export PATH="$HOME/.local/bin:$PATH"
# path to my shellscripts
export PATH="/home/nkei/dotfiles/.scripts:$PATH"

# select zsh's completement ui
zstyle ':completion:*:default' menu select=2

### ADDED BY ZINIT'S INSTALLER
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# ZINIT SETTINGS
# to uninstall plugins,
# 1. delete config about the plugin on .zshrc
# 2. restart zsh
# 3. type "$ zinit delete --clean"
# コマンドプロンプトをいい感じにする
zinit ice depth=1; zinit load romkatv/powerlevel10k
# 補完の強化
zinit ice wait"1"
zinit load zsh-users/zsh-completions
# C-rでコマンド履歴から補完
zinit ice wait"2"
zinit load zdharma-continum/history-search-multi-word
# <leader>lでインクリメンタル補完
zinit ice wait"0"
zinit load zsh-users/zsh-autosuggestions
bindkey ' l' autosuggest-accept
# now I'm setting this function off; start with tmux
# zinit ice pick'init.zsh'
# zinit light laggardkernel/zsh-tmux

# LAUNCH POWERLEVEL10K
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# NVM'S PATH
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

