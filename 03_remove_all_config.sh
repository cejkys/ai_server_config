sudo apt-get purge nvidia*
sudo apt-get autoremove
sudo apt-get purge cuda*
sudo apt-get autoremove
sudo rm -rf /usr/local/cuda-*/lib64
sudo rm -rf /usr/local/cuda-*/include/
conda env remove --name tensorflow-gpu1
conda deactivate
rm -rf ~/miniconda3
sudo rm -rf /var/*cud*
sudo rm -rf /etc/apt/sources.list.d/*cud*
rm -rf ~/.conda/ ~/.keras/
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C3005E9BDB35EEEE
sudo apt-get update
sudo apt-get upgrade
