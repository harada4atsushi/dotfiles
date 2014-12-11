#DOT_FILES=( .zsh .zshrc .zshrc.custom .zshrc.alias .zshrc.linux .zshrc.osx .ctags .emacs.el .gdbinit .gemrc .gitconfig .gitignore .inputrc .irbrc .sbtconfig .screenrc .vimrc .vim .vrapperrc import.scala .tmux.conf .dir_colors .rdebugrc .pryrc .percol.d)
DOT_FILES=( .alias .vimrc .vim .tmux.conf )

for file in ${DOT_FILES[@]}
do
      ln -s $HOME/source/dotfiles/$file $HOME/$file
    done
