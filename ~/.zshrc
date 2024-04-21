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

fastfetch

# Starship prompt
eval "$(starship init zsh)"

# zsh-vi-mode plugin
source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh

# zsh-autosuggestions plugin
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Enable a cache for completions
zstyle ':completion::complete:*' use-cache 1

# text editor script
alias edit='edit.sh'

# Add space after 'sudo'; 'sudo' as substitute for 'doas'
alias sudo='sudo '

# List all files (including hidden files) with color
# alias ls='ls -A --color=auto'

# better 'ls' command
alias ls='eza -a --icons'

# Always prompt for confirmation when copying files
alias cp='cp -i'

# Always prompt for confirmation when moving files
alias mv='mv -i'

# Always prompt for confirmation when deleting files
alias rm='rm -i'

# Aliases for clipboard copy and paste using 'xclip'
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

# Enable color highlighting for grep
alias grep='grep --color=auto'

# Automatically create parent directories if they don't exist
alias mkdir='mkdir -p'

alias files='nautilus .'

# Emacsclient
alias emacs='emacsclient -c -a 'emacs' & disown'

# Start GNOME Wayland
alias startw='XDG_SESSION_TYPE=wayland dbus-run-session gnome-session'
