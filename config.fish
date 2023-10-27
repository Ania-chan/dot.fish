export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# PROMPT='%(?:%{%}♥ :%{%}♥ ) %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'
set -x EDITOR micro
set -x SVN_EDITOR micro
set -x VISUAL micro

set -x PAGER less

set -x LC_CTYPE en_US.UTF-8
set -x LANG en_US.UTF-8
set -x LANGUAGE en_US.UTF-8

# Homebrew M1
set -x PATH /opt/homebrew/bin $PATH
set -x CPATH /opt/homebrew/include
set -x LIBRARY_PATH /opt/homebrew/lib

# Prompt Hydro
set --global hydro_symbol_prompt ♥

# Color for Hydro
set --global hydro_color_git red

# Alias RipGrep to the SilverSurfer
if command -sq rg
    alias ag=rg
end

# iTenm
test -e {$HOME}/.iterm2_shell_integration.fish
and source {$HOME}/.iterm2_shell_integration.fish

# bun
if command -sq bun
    set --export BUN_INSTALL "$HOME/.bun"
    set --export PATH $BUN_INSTALL/bin $PATH
end

# fnm
if command -sq fnm
    fnm env --use-on-cd | source
    alias nvm=fnm
end

# Pyenv
if command -sq pyenv
    pyenv init - | source
end
alias python=/usr/bin/python3

# Rbenv
if command -sq rbenv
    status --is-interactive; and /opt/homebrew/bin/rbenv init - fish | source
end

set -g MICRO_TRUECOLOR 1
