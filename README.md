# Back up and running

__Clone the repo__

```sh
git clone https://github.com/bluespore/dotfiles.git ~/.dotfiles && cd ~/.dotfiles
```

## Homebrew

1. Install Homebrew and run doctor
```sh
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"; brew doctor
```
2. Run `brew_setup.sh`
```sh
cd ~/.dotfiles/homebrew; ./install.sh
```

## System

1. Run the system defaults script
```sh
cd ~/.dotfiles/osx/ && ./set-defaults.sh
```

## Sublime Text

1. Sync your Dropbox 'System' folder. Once completed, sync your Sublime Text settings
2. Remove existing ST3 directories
```sh
rm -rf ~/Library/Application\ Support/Sublime\ Text\ 3/Packages; rm -f ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages
```
3. Link Dropbox to Application Support
```sh
ln -s ~/Dropbox/System/sublime-text-3/Packages ~/Library/Application\ Support/Sublime\ Text\ 3/Packages; ln -s ~/Dropbox/System/sublime-text-3/Installed\ Packages ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages
```

## CLI

1. Enable colours in `~/.bash_profile`
```sh
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
```
2. Import Dracula theme from Dropbox, then apply to default iTerm2 profile.
3. Link `/.zshrc` from Dropbox
```sh
ln -s ~/Dropbox/System/zsh/zshrc.symlink ~/.zshrc
```

---

_Note:_ Some OSX settings will require you to restart your session, so logout and log back in afterwards.