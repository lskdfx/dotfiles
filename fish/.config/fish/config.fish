set -gx PATH /usr/local/bin $PATH
if status is-interactive
    # Commands to run in interactive sessions can go here
end
set fish_greeting
if command -q starship
    starship init fish | source
end
if test -d /opt/homebrew/bin
    fish_add_path /opt/homebrew/bin
end
fish_add_path ~/.nix-profile/bin
fish_add_path ~/.local/bin
fish_add_path ~/.local/share/pnpm/bin

set -gx EDITOR nvim
set -gx VISUAL nvim

# Added by LM Studio CLI (lms)
set -gx PATH $PATH ~/.lmstudio/bin
# End of LM Studio CLI section

set -gx PATH "$HOME/.wakatime" $PATH

if command -q terminal-wakatime
    terminal-wakatime init fish | source
end

if command -q fzf
    fzf --fish | source
end

# opencode
fish_add_path ~/.opencode/bin

# pnpm
set -gx PNPM_HOME ~/.local/share/pnpm
fish_add_path $PNPM_HOME
