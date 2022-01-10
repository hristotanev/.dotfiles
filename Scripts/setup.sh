#!/bin/bash
# Still in-progress

pacman -Syu
pacman -S xorg xorg-server xorg-xinit xdg-user-dirs alacritty feh zsh fzf

xdg-user-dirs-update

git clone https://github.com/hristotanev/configs.git
cp -R configs/dot.config/* ~/.config
cd configs/dwm && make clean install && cd ..
cd dmenu && make clean install && cd

cp configs/dot.xinitrc ~/.xinitrc

git clone https://aur.archlinux.org/paru.git
cd paru && makepkg -si && cd

paru -S pfetch brave-bin

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
cp configs/dot.zshrc ~/.zshrc && source ~/.zshrc

exit
