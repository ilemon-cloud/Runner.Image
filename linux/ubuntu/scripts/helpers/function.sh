#!/bin/bash

#######################################
# Node Arch
# Arguments:
#  None
#######################################
node_arch() {
  case "$(uname -m)" in
    'aarch64') echo 'arm64' ;;
    'x86_64') echo 'x64' ;;
    'armv7l') echo 'armv7l' ;;
    *) exit 1 ;;
  esac
}

#######################################
# 清理数据
# Arguments:
#  None
#######################################
clean_all() {
  printf "\n\t🐋 Cleaning image 🐋\t\n"
  apt-get clean
  rm -rf /var/cache/* /var/log/* /var/lib/apt/lists/* /tmp/* || echo 'Failed to delete directories'

  printf "\n\t🐋 Cleaned up image 🐋\t\n"
}
