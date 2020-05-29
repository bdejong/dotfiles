#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

ln -sf $DIR/brewpackages ~/.brewpackages
ln -sf $DIR/gitconfig ~/.gitconfig
ln -sf $DIR/gitignore_global ~/.gitignore_global
ln -sf $DIR/vimrc ~/.vimrc
ln -sf $DIR/pylintrc ~/.pylintrc
ln -sf $DIR/zshrc ~/.zshrc
