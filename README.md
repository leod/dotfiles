# dotfiles
Linux Dotfiles.

Don't forget to initialize submodules:
```
git submodule update --init --recursive
```

The script `./install.sh` will create a symlink from your `$HOME` directory to every file in `dotfiles`.
It will also add a line to your `$HOME/.bashrc` to source the additional `.bashrc.dotfiles`.
Use at your own peril.

Requires at least Vim 8 for loading packages automatically.
