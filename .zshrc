# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# -----------------------
# My custom alias
alias ls="exa -l"
alias vim="nvim"
alias cat="bat --theme='Catppuccin-mocha'"
#alias emacs="emacs -nw"
# -----------------------
# Export PATH
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export PATH="$HOME/.emacs.d/bin:$PATH"
export PATH="/opt/homebrew/opt/ice/libexec/bin:$PATH"
export PATH="$PATH:/Applications/WezTerm.app/Contents/MacOS"
# -----------------------
# Antigen plugins for zsh
source "$HOME/.antigen.zsh"
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle supercrabtree/k
antigen bundle agkozak/zsh-z
antigen apply



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/tomasjimenez/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/tomasjimenez/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/tomasjimenez/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/tomasjimenez/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<



# Starting starship prompt
eval "$(starship init zsh)"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
export PATH=$PATH:/Users/tomasjimenez/.spicetify

# pnpm
export PNPM_HOME="/Users/tomasjimenez/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
#
#

[ -z "$TMUX"  ] && { tmux attach || exec tmux new-session && exit;}
