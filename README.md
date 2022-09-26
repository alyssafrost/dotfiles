# dotfiles
A collection of my Linux configuration files


``` shell
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
echo ".dotfiles" >> .gitignore
git clone --bare git@github.com:ElijahSink/dotfiles.git $HOME/.dotfiles
config stash && config checkout
config config --local status.showUntrackedFiles no

sudo pacman -S --needed - < .pacman_package_list

# yay
mkdir ~/installs
cd ~/installs
git clone https://aur.archlinux.org/yay.git
sudo chown -R $USER:$USER ./yay
cd yay
makepkg -si
yay -Yc

yay -S autojump-rs
```
