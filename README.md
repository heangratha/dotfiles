# Overview

These are my dotfiles. *Use at your own risk.*

Hope you find them inspiring – Feedback welcome :)

# Usage

<pre>
mkdir ~/bin/
git clone https://github.com/ctrabold/dotfiles.git ~/bin/dotfiles
</pre>
Now activate the files you want ([re]move if exist):
<pre>
ln -s ~/bin/dotfiles/zshrc ~/.zshrc
ln -s ~/bin/dotfiles/gemrc ~/.gemrc
ln -s ~/bin/dotfiles/ackrc ~/.ackrc
ln -s ~/bin/dotfiles/profile ~/.profile
ln -s ~/bin/dotfiles/siegerc ~/.siegerc
ln -s ~/bin/dotfiles/tmux/tmux-panes ~/.tmux-panes
ln -s ~/bin/dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -s ~/bin/dotfiles/git/gitconfig ~/.gitconfig               # Make sure you customize your author
ln -s ~/bin/dotfiles/git/gitignore_global ~/.gitignore_global
ln -s ~/bin/dotfiles/hg/hgrc ~/.hgrc                          # Make sure you customize your author
ln -s ~/bin/dotfiles/hg/hgignore_global ~/.hgignore_global
ln -s ~/bin/dotfiles/vimrc.after ~/.vimrc.after
ln -s ~/bin/dotfiles/vimrc.before ~/.vimrc.before
ln -s ~/bin/dotfiles/tmuxinator ~/.tmuxinator                 # Beware of the `terminator` issue. See below
ln -s ~/bin/dotfiles/slate ~/.slate                           # https://github.com/jigish/slate

# Ubuntu only
ln -s ~/bin/dotfiles/terminator ~/.config/terminator/config

# Maven only
ln -s ~/bin/dotfiles/m2/settings.xml ~/.m2/settings.xml
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
</pre>

# Kudos

1. These files are heavily inspired by https://peepcode.com/products/advanced-command-line.
If you're new to CLI, I highly recommend watching the screencast.
2. The `tmux` config file is a modified version of http://media.pragprog.com/titles/bhtmux/code/workflows/tmux.conf
`tmux` is awesome - This book helped me getting used to it and it's fun to read: http://pragprog.com/book/bhtmux/tmux
The `tmuxinator` gem makes `tmux` even more fun: https://github.com/aziz/tmuxinator
3. My vim config is based on https://github.com/carlhuda/janus.
4. My zsh config is based on https://github.com/robbyrussell/oh-my-zsh.

# Known Issues

* `terminator` on Ubuntu doesn't like the `colorscheme solarized` in `vimrc.after`. Remove it.

# TODO

* Create symlinks with an install script
* Provide installation routines for the tools e.g. with chef
