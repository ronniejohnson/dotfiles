# shanson's Dotfiles - Forked from Ryan Bates

To install, just fork and then clone this to `~/.dotfiles`. Then run the rakefile script. This will remove your existing `.vimrc, .zshrc, .irbrc, .gvimrc, .gemrc, .gitconifg.erb, .oh-my-zsh, .vim` files/directories in your home directory. Back these up before running the script!

The script then creates symlinks for files in your `.dotfiles` folder to your home directory. This enables you to make edits to the version-controlled files in your `.dotfiles` directory.

## Atom Setup

**New Installation**

Atom configuration is stored in `.atom`. When installing Atom on a new computer, copy the following files from `.atom` to `~/.atom`:

* config.cson
* keymap.cson
* snippets.cson
* styles.less

Then, run `apm install --packages-file ~/.dotfiles/.atom/package-list.txt` to install our Atom packages.

**Periodically Backing Up**

Periodically, run `atom-backup`, which copies the atom config and package list to `.atom`.

## Terminal Setup

I use iTerm, with the Smyck theme (see terminal/smyck) and 14 pt [Meslo Lg L Regular](https://github.com/powerline/fonts/tree/master/Meslo) font.

## Begin Ryan Bates Documentation

These are config files to set up a system the way I like it. It now uses [Oh My ZSH](https://github.com/robbyrussell/oh-my-zsh). If you would like to see my old, custom Bash and ZSH config, check out [this branch](https://github.com/ryanb/dotfiles/tree/custom-bash-zsh)

I am running on Mac OS X, but it will likely work on Linux as well.

## Installation

Run the following commands in your terminal. It will prompt you before it does anything destructive. Check out the [Rakefile](https://github.com/ryanb/dotfiles/blob/custom-bash-zsh/Rakefile) to see exactly what it does.

```terminal
git clone git://github.com/ryanb/dotfiles ~/.dotfiles
cd ~/.dotfiles
rake install
```

After installing, open a new terminal window to see the effects.

Feel free to customize the .zshrc file to match your preference.


## Features

Many of the following features are added through the "rbates" Oh My ZSH plugin.

I normally place all of my coding projects in ~/code, so this directory can easily be accessed (and tab completed) with the "c" command.

```terminal
c railsca<tab>
```

There is also an "h" command which behaves similar, but acts on the home path.

```terminal
h doc<tab>
```

Tab completion is also added to rake and cap commands:

```
rake db:mi<tab>
cap de<tab>
```

To speed things up, the results are cached in local .rake_tasks~ and .cap_tasks~. It is smart enough to expire the cache automatically in most cases, but you can simply remove the files to flush the cache.

If you're using git, you'll notice the current branch name shows up in the prompt while in a git repository.

There are several features enabled in Ruby's irb including history and completion. Many convenience methods are added as well such as "ri" which can be used to get inline documentation in IRB. See irbrc file for details.


## Uninstall

To remove the dotfile configs, run the following commands. Be certain to double check the contents of the files before removing so you don't lose custom settings.

```
unlink ~/.bin
unlink ~/.gitignore
unlink ~/.gemrc
unlink ~/.gvimrc
unlink ~/.irbrc
unlink ~/.vim
unlink ~/.vimrc
rm ~/.zshrc # careful here
rm ~/.gitconfig
rm -rf ~/.dotfiles
rm -rf ~/.oh-my-zsh
chsh -s /bin/bash # change back to Bash if you want
```

Then open a new terminal window to see the effects.
