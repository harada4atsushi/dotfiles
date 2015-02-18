DOT_FILES=( 
.alias
.vimrc
.vim
.tmux.conf
.gitconfig
.gitignore
.pryrc
.gemrc
.bashrc
.bash_profile
)

# TODO
# .vimのaliasを作成
# git submodule init, git submodule updateを実行する(neobundle)

for file in ${DOT_FILES[@]}
do
  ln -s $HOME/dotfiles/$file $HOME/$file
done
