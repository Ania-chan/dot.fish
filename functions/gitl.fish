function gitl --description 'Pretty print Git log'
    set -l cyan (set_color cyan)
    set -l yellow (set_color yellow)
    set -l red (set_color -o red)
    set -l blue (set_color blue)
    set -l grey (set_color 576358)
    set -l magenta (set_color d70087)
    set -l normal (set_color normal)
    set -l color_cwd (set_color $fish_color_cwd)
    git log --graph --pretty="format:%C(yellow)%h %C(cyan)%an%Creset %s %C(green)(%ar)%Cblue%d%Creset" $argv
end
