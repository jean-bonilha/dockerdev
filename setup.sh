#!/bin/bash
cd ~/.vim/bundle/coc.nvim/ && yarn
cd ~ && /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME config --local status.showUntrackedFiles no
cd ~ && /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME reset HEAD .
cd ~ && /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout -- .
cd ~/.vim/bundle/coc.nvim/ && npm install
git clone --bare -b last-stable https://github.com/jean-bonilha/.dotfiles.git $HOME/.dotfiles && \
git clone https://github.com/jean-bonilha/.vim.git $HOME/.vim && \
git clone https://github.com/jean-bonilha/.tmux.git $HOME/.tmux && \
ln -sf .vim/.vimrc $HOME && \
ln -sf .tmux/.tmux.conf $HOME && \
cp $HOME/.tmux/.tmux.conf.local $HOME && \
cd ~/.vim && \
git checkout heavenly2 && \
git submodule init && \
git submodule update && \
