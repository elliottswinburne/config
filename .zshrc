# Colors and prompt
autoload -U colors && colors
PS1="%{$fg[magenta]%}%~%{$fg[red]%} %{$reset_color%}$%b "

# Emacs keybindings
bindkey -e

# History
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history
setopt histignorealldups sharehistory

# Completion
autoload -Uz compinit
compinit
_comp_options+=(globdots)  # Include hidden files in completion

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

# Editor
export EDITOR="nvim"
export MANPAGER="nvim +Man!"

# Path
export PATH="$HOME/.local/bin:$PATH"

# fzf
if command -v fzf &> /dev/null; then
  source <(fzf --zsh)
fi

# Functions
mkcd() {
  mkdir -p "$1" && cd "$1"
}

# Aliases
alias vim="nvim"
alias vi="nvim"
alias venv="source .venv/bin/activate"
alias ls="ls -C -t -U -A -p --color=auto"
alias src="source ~/.zshrc"
alias d="cd /mnt/d"
alias c="cd /mnt/c"

# Command line editing
autoload edit-command-line
zle -N edit-command-line
bindkey '^Xe' edit-command-line

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
