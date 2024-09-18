#!/bin/sh
# 
# oh-my-zsh
#
# This installs OH-MY-ZSH and the p10k theme

if [ ! -d "$HOME/.dotfiles/.oh-my-zsh" ]; then
  ZSH=$HOME/.dotfiles/.oh-my-zsh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --keep-zshrc
fi

# Install powerlevel10k
if [ ! -d "$HOME/.dotfiles/.oh-my-zsh/custom/themes/powerlevel10k" ]; then
  # Assume that if p10k isn't installed, the fonts aren't either
  git clone --depth=1 https://github.com/romkatv/powerlevel10k-media.git $HOME/downloads/powerlevel10k-media
  cp $HOME/downloads/powerlevel10k-media/*.ttf $HOME/Library/Fonts

  # And clean up
  rm -rf $HOME/downloads/powerlevel10k-media

  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.dotfiles/.oh-my-zsh/custom}/themes/powerlevel10k
fi