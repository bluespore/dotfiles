# dotfiles are awesome

Run this:

```sh
git clone https://github.com/bluespore/dotfiles.git ~/.dotfiles && cd ~/.dotfiles && script/bootstrap
```
## set terminal colors in your `~/.bash_profile`
```sh
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
```

Might need to restart after to ensure all the default writes are executed (e.g: Screenshots saving to new location)

Cheers to [Zach Holman](https://github.com/holman) and his awesome [dotfiles](https://github.com/holman/dotfiles) repo. 
