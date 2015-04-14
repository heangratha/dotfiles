#!/usr/bin/env bats

load test_helper

@test "Override HOME for tests" {
  run echo $HOME
  [ "$status" -eq 0 ]
  echo "$output" | grep tmp/home$
}

#
# post-up
#

# @test "Sets links" {
#   [ ! -L "${HOME}/.vimrc" ]
#   [ ! -L "${HOME}/.gvimrc" ]
#   run ./hooks/post-up/00_set_links
#   [ "$status" -eq 0 ]
#   [ -L "${HOME}/.vimrc" ]
#   [ -L "${HOME}/.gvimrc" ]
# }


#
# pre-up
#

# @test "Creates folder" {
#   [ ! -d "${HOME}/workspace" ]
#   run ./hooks/pre-up/00_prepare_env
#   [ "$status" -eq 0 ]
#   [ -d "${HOME}/dotfiles-local" ]
#   [ -d "${HOME}/dev" ]
# }

# @test "Creates git config" {
#   [ ! -f "${HOME}/.gitconfig.local" ]
#   run ./hooks/pre-up/01_gitconfig
#   [ "$status" -eq 0 ]
#   [ -f "${HOME}/.gitconfig.local" ]
#   run cat ${HOME}/.gitconfig.local
#   [ "$status" -eq 0 ]
#   echo "$output" | grep "name = "
# }

# @test "Does not override existing git config" {
#   touch ${HOME}/.gitconfig.local
#   run ./hooks/pre-up/01_gitconfig
#   [ "$status" -eq 0 ]
#   [ -f "${HOME}/.gitconfig.local" ]
# }
