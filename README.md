This is my dotfiles system for my machines.
This repo must be inside your home directory.

stow must be installed.
``` bash
sudo apt install stow
```
Then, once inside the repo, run the command
``` bash
./setup.sh
```
which will stow all of the files into the right location in your home using commands such as
``` bash
stow -v -R -t ~ <target_directory/file>
```
