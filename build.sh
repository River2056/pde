#! /bin/bash

cd /root
[ ! -d ~/.config/nvim ] && mkdir -p ~/.config/nvim
[ ! -d ~/.config/tmux/ ] && mkdir -p ~/.config/tmux/
apt update -y && apt upgrade -y && apt install git python3 gcc tmux -y
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
~/nerd-fonts/install.sh DejaVuSansMono
git clone https://github.com/River2056/nvim_lua_config.git
python3 ~/nvim_lua_config/sync_symboliclinks.py
echo "KEVIN_NVIM_HOME=/root" >> ~/.bashrc

# tmux
[ ! -d ~/.tmux/plugins/tpm ] && git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -sf $(pwd)/tmux.conf ~/.config/tmux/tmux.conf
