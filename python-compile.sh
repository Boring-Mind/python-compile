# update system
sudo apt update && sudo apt upgrade -y

# install build tools and python prerequisites
sudo apt install build-essential libssl-dev zlib1g-dev libncurses5-dev libncursesw5-dev libreadline-dev libsqlite3-dev libgdbm-dev libdb5.3-dev libbz2-dev libexpat1-dev liblzma-dev tk-dev libffi-dev -y

# download and extract python
wget https://www.python.org/ftp/python/3.8.1/Python-3.8.1.tar.xz
tar xf Python-3.8.1.tar.xz
cd Python-3.8.1

# build python
./configure --enable-optimizations
# 'make -j <x>' enables parallel execution of <x> make recipes simultaneously
sudo make -j 8
# altinstall does not alter original system python install
sudo make altinstall

# run python3.7 when you type python3
sudo update-alternatives --install /usr/bin/python3 python3 /usr/local/bin/python3.8 1
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.7 2
# run below and select python3.7 from the list
sudo update-alternatives --config python3

# or create a shortcut
# sudo ln -s /usr/local/bin/python3.8 /usr/bin/py
