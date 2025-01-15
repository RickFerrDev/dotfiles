function fish_greeting
    clear
    echo $(set_color green)"Welcome User!!!"
    sleep 2
    clear
    fastfetch
end

set EDITOR nvim
set MANPAGER "nvim +Man"
set -x MANPAGER "nvim +Man!"

alias y="yazi"
alias h="hx"
alias g="git"
alias n="nvim"

starship init fish | source
zoxide init fish | source
