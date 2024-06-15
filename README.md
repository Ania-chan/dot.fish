### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/Ania-chan/dot.fish
   ```
2. Run the `install.sh` script

3. Rename `/.config/fish/functions/fish_mode_prompt.fish` and `/.config/fish/functions/fish_prompt.fish` files to something else and install `jorgebucaran/hydro`.
   ```sh
   fisher install jorgebucaran/hydro
   ```
   
4. Add fish to the know shells run the command. Path may be different so it's better to check it with `which fish`.
   ```sh
   sudo sh -c 'echo /opt/homebrew/bin/fish >> /etc/shells'
   ```
   
5. Restart your terminal

6. Set fish as the default shell run the command:
   ```sh
   chsh -s /opt/homebrew/bin/fish
   ```

7. Restart your terminal and check if it launched with fish or not

8. Add brew binaries in fish path run the command:
   ```sh
   fish_add_path /opt/homebrew/bin
   ```

9. If after restaring, fish still isn't the default shell you may need to change iTerm2 settings. In Profiles > General > Command you need to select `Custom Shell` and add the path to fish. You also may need to check `Load shell integration automatically` checkbox.
