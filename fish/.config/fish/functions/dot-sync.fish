function dot-sync --description 'Commit and push dotfile changes'
    if test (count $argv) -eq 0
        echo "Usage: dot-sync <commit message>"
        return 1
    end

    git -C ~/dotfiles add -A
    git -C ~/dotfiles commit -m "$argv"
    git -C ~/dotfiles push
end
