function dot-sync --description 'Stage tracked dotfile changes, commit, and push'
    if test (count $argv) -eq 0
        echo "Usage: dot-sync <commit message>"
        return 1
    end
    yadm add -u
    yadm commit -m "$argv"
    yadm push
end
