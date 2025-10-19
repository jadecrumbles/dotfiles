GIT_ROOT=$(git rev-parse --show-toplevel)

if [ -L "~/.zshrc" ]; then
    rm "~/.zshrc"
    echo "asdf"
fi
ln -sf "$GIT_ROOT/src/.zshrc" ~/.zshrc

if [ -L "~/.zshrc" ]; then
    rm "~/.zshrc"
    echo "asdf"
fi
ln -sf "$GIT_ROOT/src/.bashrc" ~/.bashrc

if [ -L "~/.vscode-oss" ]; then
    rm -r "~/.vscode-oss"
    echo "asdf"
fi
ln -sf "$GIT_ROOT/src/.vscode-oss" ~/.vscode-oss
