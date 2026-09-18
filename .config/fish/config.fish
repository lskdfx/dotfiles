set -gx PATH /usr/local/bin $PATH
if status is-interactive
    # Commands to run in interactive sessions can go here
end
set fish_greeting
starship init fish | source
fish_add_path /opt/homebrew/bin
fish_add_path ~/.nix-profile/bin
fish_add_path ~/.local/bin

set -gx EDITOR nvim
set -gx VISUAL nvim

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /Users/aditgupta/.lmstudio/bin
# End of LM Studio CLI section

# terminal-wakatime setup
set -gx PATH "$HOME/.wakatime" $PATH
terminal-wakatime init fish | source
fzf --fish | source

# opencode
fish_add_path /home/aditgupta/.opencode/bin
