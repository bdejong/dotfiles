#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

ln -sf $DIR/.bash_profile ~/.bash_profile
ln -sf $DIR/.bash_prompt ~/.bash_prompt
ln -sf $DIR/.brewpackages ~/.brewpackages
ln -sf $DIR/.gitconfig ~/.gitconfig
ln -sf $DIR/.gitignore_global ~/.gitignore_global
ln -sf $DIR/.vimrc ~/.vimrc

