# Overview

A set of vim, zsh, git, and tmux configuration files.


# Requirements

- [zsh](http://www.zsh.org/)

## Mac OS X

- [Homebrew](https://github.com/Homebrew/homebrew/wiki/Installation)

## Ubuntu

- [`rcm`](http://thoughtbot.github.io/rcm/)

    wget https://thoughtbot.github.io/rcm/debs/rcm_1.2.2-2_all.deb
    sudo dpkg -i rcm_1.2.2-2_all.deb

- `terminator`


# Install

Set zsh as your login shell:

    chsh -s $(which zsh)

Clone onto your laptop:

    git clone git://github.com/ctrabold/dotfiles.git

Install [rcm](https://github.com/thoughtbot/rcm):

    brew bundle dotfiles/Brewfile

Install:

    rcup -d dotfiles -I rcrc && rcup

This will create symlinks for config files in your home directory. The `-I`
option only creates a symlink for the `rcrc` file, which excludes the `README.md`, `LICENSE` and `Brewfile` files, that should not be symlinked.
We then run `rcup` on all files but with the new exclude patterns from `.rcrc`.

You can safely run `rcup` multiple times to update:

    rcup


# What's in it?

[git](http://git-scm.com/) configuration:

*

[Ruby](https://www.ruby-lang.org/en/) configuration:

*

Shell aliases and scripts:

*

[Sublimetext3]() configuration

* Symlink to `~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Ruby.sublime-settings`

[tmux](http://robots.thoughtbot.com/a-tmux-crash-course)
configuration:

*

[vim](http://www.vim.org/) configuration:

*


# Make your own customizations

Put your customizations in dotfiles appended with `.local`:

* `~/.aliases.local`
* `~/.gitconfig.local`
* `~/.tmux.conf.local`
* `~/.vimrc.local`
* `~/.zshrc.local`

For example, your `~/.aliases.local` might look like this:

    # Productivity
    alias todo='$EDITOR ~/.todo'

Your `~/.gitconfig.local` might look like this:

    [alias]
      l = log --pretty=colored
    [pretty]
      colored = format:%Cred%h%Creset %s %Cgreen(%cr) %C(bold blue)%an%Creset
    [user]
      name = John Doe
      email = john@example.com

Your `~/.zshrc.local` might look like this:

    # recommended by brew doctor
    export PATH="/usr/local/bin:/usr/local/sbin:$PATH"



# Ubuntu only
ln -s ~/dotfiles/terminator ~/.config/terminator/config

# Maven only
ln -s ~/dotfiles/m2/settings.xml ~/.m2/settings.xml
</pre>

# Other goodies

## Create folder for janus plugins

See https://github.com/carlhuda/janus#customization for details
<pre>
mkdir ~/.janus
cd !$
git clone git://github.com/vim-scripts/Auto-Pairs.git
git clone git://github.com/vim-scripts/Align.git
git clone git://github.com/vim-scripts/chef.vim.git
git clone git://github.com/Lokaltog/vim-powerline
git clone https://github.com/rizzatti/funcoo.vim.git
git clone https://github.com/rizzatti/dash.vim.git
</pre>

## Install Autojump

<pre>
  brew install autojump
</pre>

## Install hightlighter

<pre>
  brew install highlight
</pre>

See https://gist.github.com/jimbojsb/1630790

## Install Rubies

See https://github.com/sstephenson/rbenv#homebrew-on-mac-os-x for details.

<pre>
rbenv install 1.9.3-p545
rbenv install 2.0.0-p451
rbenv install 2.1.1
rbenv install jruby-1.7.9

rbenv global 2.0.0-p451
</pre>


# Fun

    sudo apt-get install mplayer imagemagick libmagickwand-dev
    gem install lolcommits
    lolcommits --enable


# Docker

    sudo apt-get install linux-image-extra-`uname -r`


# Credits

1. These files are heavily inspired by [thoughtbot, inc](http://thoughtbot.com/community). Thank you for your inspiring work!
The initial versions were inspired by the awesome folks at [peepcode](https://peepcode.com/products/advanced-command-line).
2. The `tmux` config file is a modified version of from [the tmux book](http://media.pragprog.com/titles/bhtmux/code/workflows/tmux.conf).
`tmux` is awesome - [The `tmux` book](http://pragprog.com/book/bhtmux/tmux) helped me getting used to it and it's fun to read.
The [`tmuxinator`](https://github.com/aziz/tmuxinator) gem makes `tmux` even more fun!
3. My vim config is based on [janus](https://github.com/carlhuda/janus).
4. My zsh config is based on [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh).
