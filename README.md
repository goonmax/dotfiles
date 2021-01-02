#Dotfiles Management

The recommended way of syncing these dotfiles is using GNU-stow. For Debian-like distributions, you would thus sync with your home directory as follows:

```
sudo apt install stow
stow vim bash ctags
```

For submodules, perform symlinks relative to where the submodule should be placed (i.e. in vim/.vim/pack/plugins/start run ln -s ../../../../../submodules/submodule). To update submodules, run git submodule update --remote.
