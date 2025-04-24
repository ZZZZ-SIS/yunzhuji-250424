#!/bin/bash

# 更新系统并安装必要软件包
sudo apt-get update && sudo apt-get upgrade -y
sudo apt install python3-full -y
sudo apt-get install -y libevent-2.1-7t64 \
                        libgstreamer-plugins-bad1.0-0 \
                        libflite1 \
                        libavif16 \
                        gstreamer1.0-libav \
                        wget \
                        python3.12-venv

# 创建项目目录并初始化虚拟环境
mkdir -p $HOME/Downloads/code/demo
cd $HOME/Downloads/code/demo
python3 -m venv .venv
source .venv/bin/activate

# 安装 Python 依赖
pip install --upgrade pip
pip install playwright tqdm loguru apscheduler \
            gspread google-auth google-auth-oauthlib \
            google-auth-httplib2 beautifulsoup4 lxml \
            playwright-stealth setuptools gdown

# 安装 Playwright 浏览器
playwright install

# 下载 Google Drive 文件夹内容
gdown --folder https://drive.google.com/drive/folders/1555jYGJJDPigpdi0xfOzBstn14LrcEUT?usp=sharing -O $HOME/Downloads

# 解压 demo 项目压缩包
unzip $HOME/Downloads/demo.zip -d $HOME/Downloads/code/demo/

# 下载并解压 PyCharm 社区版
wget https://download-cdn.jetbrains.com/python/pycharm-community-2025.1.tar.gz -O $HOME/Downloads/pycharm-community-2025.1.tar.gz
tar -zxvf $HOME/Downloads/pycharm-community-2025.1.tar.gz -C $HOME/Downloads

# 启动 PyCharm 并打开项目
$HOME/Downloads/pycharm-community-2025.1/bin/pycharm $HOME/Downloads/code/demo/
