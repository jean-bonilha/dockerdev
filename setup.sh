#!/bin/bash
cd ~/.vim/bundle/coc.nvim/ && yarn
cd ~ && /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME config --local status.showUntrackedFiles no
cd ~ && /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME reset HEAD .
cd ~ && /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout -- .
cd ~/.vim/bundle/coc.nvim/ && npm install
