#!/bin/bash -e
printf "\n\t🐋 Installing packages 🐋\t\n"
packages=(
  ssh
  gawk
  curl
  jq
  wget
  sudo
  gnupg-agent
  ca-certificates
  software-properties-common
  apt-transport-https
  libyaml-0-2
  zstd
  zip
  unzip
  xz-utils
  python3-pip
  python3-venv
  pipx
)

apt-get -yq update
apt-get -yq install --no-install-recommends --no-install-suggests "${packages[@]}"

ln -s "$(which python3)" "/usr/local/bin/python"

add-apt-repository ppa:git-core/ppa -y
apt-get update
apt-get install -y git
git --version
git config --system --add safe.directory '*'
wget https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh -qO- | bash
apt-get update
apt-get install -y git-lfs

{
  echo "AGENT_TOOLSDIRECTORY=${AGENT_TOOLSDIRECTORY}"
  echo "RUN_TOOL_CACHE=${AGENT_TOOLSDIRECTORY}"
  echo "DEPLOYMENT_BASEPATH=/opt/runner"
  echo "USER=$(whoami)"
  echo "RUNNER_USER=$(whoami)"
} | tee -a "/etc/environment"

