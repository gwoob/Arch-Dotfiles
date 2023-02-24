# kool fetch!
ufetch

# don't got sudo
alias sudo='doas'
alias sudoedit='echo "copy as user, edit as user, replace as root"'

# politeness
alias pls='doas'
alias please='doas'

# gentoo specific
alias sync='emaint --auto sync'
alias upgrade='emerge --ask --verbose --update --deep --newuse @world'
alias remove='emerge --ask --deselect'
alias depclean='emerge --ask --depclean'
alias upgrade-shutdown='emerge --verbose --deep --newuse --update --with-bdeps=y @world | tee emerge-log.log && shutdown -h now'
alias kernel-make-all='make -j32 && make modules_install && make install'

# suspend
alias suspend='loginctl suspend'

# nvim loyalty
export EDITOR=nvim
alias vi='nvim'
alias vim='nvim'
alias nano='nvim'

# librewolf
alias firefox='librewolf'

# ls with long listing and hidden files
alias ls='ls -la'

# grep color
alias grep='grep --color=auto'

# pipe output to grep
alias -g G='| grep'
# pipe output to less
alias -g L='| less'
# pipe output to `wc` with option `-l`
alias -g W='| wc -l'
# convert multiline output to single line and copy it to the system clipboard
alias -g C='| tr -d ''\n'' | xclip -selection clipboard' 
