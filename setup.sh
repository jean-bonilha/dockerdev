#!/bin/bash
cd ~/.vim/bundle/coc.nvim/ && yarn
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
cd ~ && dotfiles config --local status.showUntrackedFiles no && dotfiles reset HEAD . && dotfiles checkout -- . && cd - && clear
