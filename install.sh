cp -rf .fns ~/.fns
cp -rf .alias ~/.alias


if ! grep -q "source ~/.alias" ~/.zshrc; then
    echo "adding alias configuration `.alias` to .zshrc!"
    echo 'source ~/.alias' >> ~/.zshrc
else
    echo "alias configuration already part of .zshrc"
fi

if ! grep -q "source ~/.fns" ~/.zshrc; then
    echo "adding function configuration `.fns` to .zshrc!"
    echo 'source ~/.fns' >> ~/.zshrc
else
    echo "function configuration already part of .zshrc"
fi

source ~/.zshrc