#!/bin/bash
base_dir="$(dirname "$0")/.."

# shellcheck source=./../helpers/function.sh
source "$base_dir/helpers/function.sh"
# shellcheck source=./../installers/base.sh
source "$base_dir/base.sh"
# shellcheck source=./../installers/node.sh
source "$base_dir/node.sh"
# shellcheck source=./../installers/docker.sh
source "$base_dir/docker.sh"

# 清理临时文件
clean_all