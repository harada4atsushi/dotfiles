#DOT_FILES=( .zsh .zshrc .zshrc.custom .zshrc.alias .zshrc.linux .zshrc.osx .ctags .emacs.el .gdbinit .gemrc .gitconfig .gitignore .inputrc .irbrc .sbtconfig .screenrc .vimrc .vim .vrapperrc import.scala .tmux.conf .dir_colors .rdebugrc .pryrc .percol.d)
DOT_FILES=( 
.alias
.vimrc
.vim
.tmux.conf
.gitconfig
.gitignore
.pryrc
.gemrc
)

# TODO
# .vimのaliasを作成
# git submodule init, git submodule updateを実行する(neobundle)

for file in ${DOT_FILES[@]}
do
      ln -s $HOME/dotfiles/$file $HOME/$file
    done
