source $HOME/dotfiles/zsh/env
source $HOME/dotfiles/zsh/path
source $HOME/dotfiles/zsh/config
[[ -s $HOME/dotfiles/zsh/secret ]] && source $HOME/dotfiles/zsh/secret
[[ -f $HOME/.aliases ]] && source $HOME/.aliases
source $HOME/dotfiles/zsh/history
source $HOME/dotfiles/zsh/functions

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# added by travis gem
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
