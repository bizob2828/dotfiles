# My super cool dot files

## Installation

```
git clone git@github.com:bizob2828/dotfiles.git ~/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
```

## My profile stuff
Install these deps first
```
pip install powerline-status --user
pip install powerline-gitstatus # set up the git status in the shell https://github.com/jaspernbrouwer/powerline-gitstatus
brew install vim
```

## OS X settings
I have found that this is better to change keyboard settings https://pqrs.org/osx/karabiner/
```
# keyboard and trackpad settings
defaults write -g InitialKeyRepeat -int 15
defaults write -g KeyRepeat -int 1
defaults write -g com.apple.swipescrolldirection -bool false

#Dock settings
defaults write com.apple.dock orientation -string left
defaults write com.apple.dock autohide -bool true
killall Dock
```
