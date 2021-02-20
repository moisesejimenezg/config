function fish_find_text
    rg -n $argv | less -R
end
