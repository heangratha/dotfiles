source $HOME/bin/dotfiles/zsh/env
source $HOME/bin/dotfiles/zsh/path
source $HOME/bin/dotfiles/zsh/config
[[ -s $HOME/bin/dotfiles/zsh/secret ]] && source $HOME/bin/dotfiles/zsh/secret
source $HOME/bin/dotfiles/zsh/aliases
source $HOME/bin/dotfiles/zsh/history
source $HOME/bin/dotfiles/zsh/functions

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
