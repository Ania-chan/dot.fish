# Catsay
function catsay --description "Display a cat emoji"
    if string length --quiet $argv[1]
        set thoughts $argv[1]
    else
        set thoughts "Hello, World!"
    end
    if string length --quiet $argv[2]
        set eye $argv[2]
    else
        set eye (random choice x '$' O '*' '@' - o '^' ♥)
    end
    set length (string length $thoughts)
    set separator (string repeat -n $length '─')
    echo "\
╭$separator╮
│$thoughts│
╰$separator╯
   ╰
     /\\_/\\
    (>$eye.$eye<)
    ((\")(\"))_/"
end
