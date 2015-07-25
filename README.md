# Back up and running

## Clone the repo

```sh
git clone https://github.com/bluespore/dotfiles.git ~/.dotfiles && cd ~/.dotfiles
```

## Homebrew

_1._ Install Homebrew and run doctor
```sh
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"; brew doctor
```
_2._ Run `brew_setup.sh`
```sh
cd ~/.dotfiles/homebrew; ./install.sh
```

## System

_1._ Run the system defaults script
```sh
cd ~/.dotfiles/osx/ && ./set-defaults.sh
```

## Sublime Text

_1._ Sync your Dropbox 'System' folder. Once completed, sync your Sublime Text settings

_2._ Remove existing ST3 directories
```sh
rm -rf ~/Library/Application\ Support/Sublime\ Text\ 3/Packages; rm -f ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages
```
_3._ Link Dropbox to Application Support
```sh
ln -s ~/Dropbox/System/sublime-text-3/Packages ~/Library/Application\ Support/Sublime\ Text\ 3/Packages; ln -s ~/Dropbox/System/sublime-text-3/Installed\ Packages ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages
```

## CLI

_1._ Enable colours in `~/.bash_profile`
```sh
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
```
_2._ Import Dracula theme from Dropbox, then apply to default iTerm2 profile.

_3._ Link `/.zshrc` from Dropbox
```sh
ln -s ~/Dropbox/System/zsh/zshrc.symlink ~/.zshrc
```

---

_Note:_ Some OSX settings will require you to restart your session, so logout and log back in afterwards.