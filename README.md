# Seddon does Holmans's dotfiles

## dotfiles

These dotfiles have been forked from Zach Holman's because I like the modular nature of the hierarchy. They are
particulary geared towards the way I work so so you'll probably want to fork the original. This repository
includes AWS packages, more use of Brewfiles rather than calling brew install and various other small changes. 

## install

Run this:

```sh
git clone https://github.com/bluespore/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```
## set terminal colors in your `~/.bash_profile`
```sh
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
```

## thanks

Cheers to [Zach Holman](https://github.com/holman) and his awesome [dotfiles](https://github.com/holman/dotfiles) repo. 
