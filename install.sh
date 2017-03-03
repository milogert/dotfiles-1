#!/usr/bin/env bash

export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Bunch of symlinks
ln -sfv "$DOTFILES_DIR/runcom/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/runcom/.inputrc" ~
ln -sfv "$DOTFILES_DIR/runcom/.ackrc" ~
ln -sfv "$DOTFILES_DIR/runcom/.gemrc" ~
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~

# Package managers & packages

. "$DOTFILES_DIR/install/brew.sh"
. "$DOTFILES_DIR/install/brew-cask.sh"
. "$DOTFILES_DIR/install/git.sh"
. "$DOTFILES_DIR/install/nvm.sh"
. "$DOTFILES_DIR/install/ruby.sh"
