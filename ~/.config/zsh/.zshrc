zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}'

autoload -Uz compinit promptinit
compinit
promptinit

# History
HISTFILE=$HOME/.config/zsh/.zhistory
HISTSIZE=99999999
SAVEHIST=$HISTSIZE
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.

# Command auto-correction
setopt correct

if command -v fastfetch > /dev/null; then
	fastfetch
fi

PROMPT='%~'$'\n''> '

precmd() {
    precmd() {
        echo
    }
}

bindkey -v

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

# Enable a cache for completions
zstyle ':completion::complete:*' use-cache 1

# text editor script
alias edit='edit.sh'

# Add space after 'sudo'; 'sudo' as substitute for 'doas'
alias sudo='sudo '

# better 'ls' command
alias ls='eza -a -l --group-directories-first --icons=auto'

# Always prompt for confirmation when copying files
alias cp='cp -i'

# Always prompt for confirmation when moving files
alias mv='mv -i'

# Aliases for clipboard copy and paste using 'xclip'
alias wlc='wl-copy'
alias wlp='wl-paste'

# Enable color highlighting for grep
alias grep='grep --color=auto'

# Automatically create parent directories if they don't exist
alias mkdir='mkdir -p'

alias files='nautilus .'

unz='patool extract'

startx='Hyprland'
startw='Hyprland'

# Emacsclient
alias emacs='emacsclient -c -a 'emacs' & disown'

export VISUAL=nvim
export EDITOR=nvim
export SUDO_EDITOR=nvim

[ -d $HOME/.local/bin ] && PATH=$PATH:$HOME/.local/bin

[ -d $HOME/.emacs.d/bin ] && PATH=$PATH:$HOME/.emacs.d/bin

# Non-GNU
alias rm='trash -v'
