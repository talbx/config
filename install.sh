cp -rf .fns ~/.fns
cp -rf .alias ~/.alias
cp -rf .gitconfig /.gitconfig

function append() {
    if ! grep -q "source ~/${1}" ~/.zshrc; then
        echo "adding ${1} configuration $(${1}) to .zshrc!"
        echo "source ~/${1}" >>~/.zshrc
    else
        echo "${1} configuration already part of .zshrc"
    fi
}

append ".alias"
append ".fns"
append ".gitconfig"

source ~/.zshrc
