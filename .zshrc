# aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
alias lg='lazygit'
export PATH="$HOME/.local/bin:$PATH"
export PATH="/home/nkei/dotfiles/.scripts:$PATH"
alias ojt='oj t -c "./a.out"'
alias ojs='oj s main.cpp -y'

zstyle ':completion:*:default' menu select=2

### Added by Zinit's installer
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

# zinit settings
# コマンドプロンプトをいい感じにする
zinit ice depth=1; zinit load romkatv/powerlevel10k
# 補完の強化
zinit ice wait"1"
zinit load zsh-users/zsh-completions
# C-rでコマンド履歴から補完
zinit ice wait"3"
zinit load zdharma-continum/history-search-multi-word
# C-lでインクリメンタル補完
zinit ice wait"4"
zinit load zsh-users/zsh-autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=cyan,bold,underline"
bindkey '^l' autosuggest-accept
#tmux autostart
zinit ice pick'init.zsh'
zinit load laggardkernel/zsh-tmux

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
