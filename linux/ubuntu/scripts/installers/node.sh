#!/bin/bash
node_version="20"

printf "\n\t🐋 Installing Node.JS=%s 🐋\t\n" "${node_version}"
ver=$(curl https://nodejs.org/download/release/index.json | jq "[.[] | select(.version|test(\"^v${node_version}\"))][0].version" -r)
node_path="$AGENT_TOOLSDIRECTORY/node/${ver:1}"
mkdir -pv "${node_path}"
wget "https://nodejs.org/download/release/latest-v${node_version}.x/node-$ver-linux-$(node_arch).tar.xz" -O "node-$ver-linux-$(node_arch).tar.xz"
tar -Jxf "node-$ver-linux-$(node_arch).tar.xz" --strip-components=1 -C "$node_path"
rm -rfv "node-$ver-linux-$(node_arch).tar.xz"

ln -s "$node_path"/bin/node /usr/local/bin/node
ln -s "$node_path"/bin/npm /usr/local/bin/npm
ln -s "$node_path"/bin/npx /usr/local/bin/npx

printf "\n\t🐋 Installed Node.JS 🐋\t\n"
node -v

printf "\n\t🐋 Installed NPM 🐋\t\n"
npm -v