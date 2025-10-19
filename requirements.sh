#!/bin/bash
sudo pacman -S \
    zsh \
    code

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
