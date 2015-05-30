# Dotfiles, bro

As with all dotfile repos, the instructions are specific to his/her own personal set up and it is advised that you fork and modify as necessary.

__Clone the repo__
```sh
git clone https://github.com/bluespore/dotfiles.git ~/.dotfiles && cd ~/.dotfiles
```

_NB. running `script/bootstrap` doesn't seem to work as expected. Kill the process when it hangs on 'installing dependencies'_

## Step 1: Install Homebrew and run doctor
```sh
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"; brew doctor
```

## Step 2: Run Brewfile
Bundle brewfile doesn't work anymore - Reminder to run shell script instead.
```sh
cd ~/.dotfiles/homebrew;
```

## Step 3: Create screenshots folder on desktop
```sh
mkdir -m 777 ~/Desktop/Screenshots
```

## Step 4: Run OSX settings script
```sh
cd ~/.dotfiles/osx/ && ./set-defaults.sh
```

## Step 5: Sync your Dropbox 'System' folder. Once completed, sync your Sublime Text settings
```sh
ln -s ~/Dropbox/System/sublime-text-3/Packages ~/Library/Application\ Support/Sublime\ Text\ 3/Packages
ln -s ~/Dropbox/System/sublime-text-3/Installed\ Packages ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages
```

## Step 6: Set terminal colors in your `~/.bash_profile`

```sh
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
```

Some OSX settings will require you to restart your session, so logout and log back in afterwards.

Thanks, [Zach Holman](https://github.com/holman) for your [dotfiles](https://github.com/holman/dotfiles)!
