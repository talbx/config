#!/usr/bin/env bash

cp -rf .profile/ ~/.profile
cp -rf .gitconfig ~/.gitconfig

function append() {
    if ! grep -q "source ~/${1}" ~/.zshrc; then
        echo "adding ${1} configuration $(${1}) to .zshrc!"
        echo "source ~/${1}" >>~/.zshrc
    else
        echo "${1} configuration already part of .zshrc"
    fi
}

echo "configuring dotfiles..."
append ".profile/.profile"

# echo "setting up starship"
# initStarship

echo "installing all homebrew dependencies"
brew bundle install

#initTools

echo "sourcing .zshrc"
source ~/.zshrc

echo "-- done. ready to go! --"