#!/usr/bin/env bash

echo "Installing Lancium"
echo
echo
mkdir ~/Lancium_temp
cd ~/Lancium_temp
echo "Downloading Resources - "
echo
echo
wget -q --show-progress https://github.com/yashpl/go-ethereum/raw/master/downloads/geth
echo
wget -q --show-progress https://raw.githubusercontent.com/yashpl/go-ethereum/master/downloads/lancium.json
echo
wget -q --show-progress https://raw.githubusercontent.com/yashpl/go-ethereum/master/downloads/static-nodes.json
echo
wget -q --show-progress https://github.com/yashpl/go-ethereum/raw/master/downloads/lancium_0.9.3_amd64.deb
echo
echo
echo "Preparing Environment"
echo
echo
chmod +x geth
./geth init lancium.json
cp static-nodes.json ~/.lancium/geth/static-nodes.json
echo
echo
echo "Installing Browser"
echo
echo
sudo dpkg -i lancium_0.9.3_amd64.deb
echo
echo
rm -rf ~/Lancium_temp
echo "Install complete. Type 'lancium' in terminal to launch wallet."

