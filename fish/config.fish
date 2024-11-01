function fish_greeting 
  fastfetch
end

set EDITOR nvim 
set MANPAGER "nvim +Man"
set -x MANPAGER "nvim +Man!"

starship init fish | source
zoxide init fish | source 
