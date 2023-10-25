if ! type brew > /dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install following dependencies
# - Shell: [fish-shell](https://fishshell.com)
# - Node version manager: [fnm](https://github.com/Schniz/fnm)
# - Search: [RipGrep](https://github.com/BurntSushi/ripgrep)
# - Find: [fd](https://github.com/sharkdp/fd)
# - Requests: [httpie](https://httpie.io)
# - JSON: [.jq](https://jqlang.github.io/jq/)
# - Cat: [bat](https://github.com/sharkdp/bat)
# - Editor: [Micro](https://micro-editor.github.io)
# - GitHub: [gh](https://github.com/cli/cli)
# - Docs: [tldr](https://github.com/tldr-pages/tldr)
brew install fish fnm ripgrep fd httpie jq bat micro gh tldr
  
# Fish package manager [Fisher](https://github.com/jorgebucaran/fisher)
fish
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

# Navigation: [z for fish](https://github.com/jethrokuan/z)
fisher install jethrokuan/z
