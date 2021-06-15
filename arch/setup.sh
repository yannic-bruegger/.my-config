pamac update --no-confirm
sudo rm /etc/pamac.conf
sudo ln -sf ~/.my-config/config/pamac.conf /etc/pamac.conf
pamac install $(cat software) --no-confirm

# oh-my-zsh
source ~/.zshrc
sudo rm -rf $ZSH_CUSTOM/plugins/zsh-autosuggestions
sudo rm -rf $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
sudo git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
rm ~/.zshrc
ln -sf ~/.my-config/config/.zshrc ~/.zshrc

# docker
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

# git
rm ~/.gitconfig
ln -sf ~/.my-config/config/.gitconfig ~/.gitconfig

# albert
rm ~/.config/albert/albert.conf
ln -sf ~/.my-config/config/albert.conf ~/.config/albert/albert.conf

# code
./install-code-extensions.sh
rm ~/.config/Code/User/settings.json
ln -sf ~/.my-config/config/code.json ~/.config/Code/User/settings.json

# stretchly
rm ~/.config/Stretchly/config.json
ln -sf ~/.my-config/config/stretchly.json ~/.config/Stretchly/config.json

# firefox
mv ~/.mozilla/firefox/profiles.ini ~/.mozilla/firefox/profiles.ini-backup 
ln -sf ~/.my-config/config/firefox-profiles.ini ~/.mozilla/firefox/profiles.ini
mkdir ~/.mozilla/firefox/yannic.dev-edition-default
ln -sf ~/.my-config/config/firefox.js ~/.mozilla/firefox/yannic.dev-edition-default/user.js

# Additional changes
mkdir ~/development
