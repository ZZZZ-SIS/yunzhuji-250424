sudo apt-get update && sudo apt-get upgrade -y
sudo apt install python3-full -y
sudo apt-get install libevent-2.1-7t64 libgstreamer-plugins-bad1.0-0 libflite1 libavif16 gstreamer1.0-libav wget -y
sudo apt-get install python3.12-venv -y

mkdir -p $HOME/Downloads/code/demo
cd $HOME/Downloads/code/demo
python3 -m venv .venv
source .venv/bin/activate
pip install playwright tqdm loguru apscheduler gspread google-auth google-auth-oauthlib google-auth-httplib2 beautifulsoup4
pip install beautifulsoup4 lxml
pip install playwright-stealth
pip install setuptools
playwright install
pip install gdown

gdown --folder https://drive.google.com/drive/folders/1555jYGJJDPigpdi0xfOzBstn14LrcEUT?usp=sharing -O $HOME/Downloads
unzip $HOME/Downloads/demo.zip -d $HOME/Downloads/code/demo/

wget https://download-cdn.jetbrains.com/python/pycharm-community-2025.1.tar.gz -O $HOME/Downloads/pycharm-community-2025.1.tar.gz
tar -zxvf $HOME/Downloads/pycharm-community-2025.1.tar.gz -C $HOME/Downloads
$HOME/Downloads/pycharm-community-2025.1/bin/pycharm $HOME/Downloads/code/demo/
