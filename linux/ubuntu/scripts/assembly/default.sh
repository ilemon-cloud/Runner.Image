#!/bin/bash
base_dir="$(dirname "$(dirname "$0")")"

# shellcheck source=./../helpers/function.sh
source "$base_dir/helpers/function.sh"
# shellcheck source=./../installers/base.sh
source "$base_dir/installers/base.sh"
# shellcheck source=./../installers/node.sh
source "$base_dir/installers/node.sh"
# shellcheck source=./../installers/docker.sh
source "$base_dir/installers/docker.sh"

# 清理临时文件
clean_all
