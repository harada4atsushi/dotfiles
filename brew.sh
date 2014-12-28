#!/bin/sh
 
echo "brew updating..."
 
brew update
outdated=`brew outdated`
 
if [ -n "$outdated" ]; then
  cat << EOF
 
The following package(s) will upgrade.
 
$outdated
 
EOF
fi
 
# Add Repository
brew tap homebrew/dupes
brew tap josegonzalez/homebrew-php
brew tap caskroom/homebrew-versions
brew tap peco/peco
brew tap homebrew/apache
brew tap homebrew/binary

brew install brew-cask
brew install ctags 
brew install git 
brew install heroku-toolbelt 
brew install ant 
brew install mongodb 
brew install openssl 
brew install rbenv 
brew install ruby-build 
brew install rbenv-gemset 
brew install rbenv-gem-rehash 
brew install readline 
brew install apple-gcc42 
brew install tree 
brew install awscli 
brew install postgresql 
brew install libxml2 # for nokogiri
brew install libxslt # for nokogiri
brew install libiconv # for nokogiri
brew install peco 
brew install tmux 
brew install reattach-to-user-namespace 
brew install bash-completion 
brew install node 
brew install graphviz 
brew install mod_security 
brew install mysql 
brew install redis 
brew install qt 
brew install docker 
brew install boot2docker  
brew install imagemagick
brew install redis 

#brew install caskroom/cask/brew-cask
#brew cask install iterm2
#brew cask install growl-fork
#brew cask install growlnotify
#brew cask install sublime-text3
#brew cask install todoist
#brew cask install the-unarchiver
#brew cask install dash
#brew cask install hyperswitch
#brew cask install chromecast
#brew cask install cyberduck
#brew cask install teamviz 
#brew cask install android-studio 
#brew cask install alfred 
