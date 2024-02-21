#!/usr/bin/env bash

cp -rf .fns ~/.fns
cp -rf .setup ~/.setup
cp -rf .alias ~/.alias
cp -rf .gitconfig ~/.gitconfig

function append() {
    if ! grep -q "source ~/${1}" ~/.zshrc; then
        echo "adding ${1} configuration $(${1}) to .zshrc!"
        echo "source ~/${1}" >>~/.zshrc
    else
        echo "${1} configuration already part of .zshrc"
    fi
}

echo "configuring dotfiles"
append ".alias"
append ".fns"
append ".setup"

# echo "setting up starship"
# initStarship

echo "installing all homebrew dependencies"
brew bundle install

initTools

echo "sourcing zshrc"
source ~/.zshrc

echo "-- done. ready to go! --"