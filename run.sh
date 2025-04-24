#!/bin/bash

# 设置 PyCharm 路径
PYCHARM_DIR="$HOME/Downloads/pycharm-community-2025.1"
PROJECT_DIR="$HOME/Downloads/code/demo"

# 检查 PyCharm 是否存在
if [ ! -d "$PYCHARM_DIR" ]; then
  echo "❌ PyCharm 目录不存在：$PYCHARM_DIR"
  exit 1
fi

# 启动 PyCharm 并打开项目
echo "🚀 启动 PyCharm..."
"$PYCHARM_DIR/bin/pycharm.sh" "$PROJECT_DIR"
