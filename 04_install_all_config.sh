#!/bin/bash

# Download cudnn on local machine (https://developer.nvidia.com/rdp/cudnn-download)
# scp /mnt/c/Users/Science/Downloads/cudnn-local-repo-ubuntu2204-8.9.6.50_1.0-1_amd64.deb aiadmin@ai-cejka2.science.pef.czu.cz:/home/aiadmin/ai_server_config/

sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update
sudo apt-get install nvidia-driver-535
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-ubuntu2204.pin
sudo mv cuda-ubuntu2204.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget https://developer.download.nvidia.com/compute/cuda/12.3.0/local_installers/cuda-repo-ubuntu2204-12-3-local_12.3.0-545.23.06-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu2204-12-3-local_12.3.0-545.23.06-1_amd64.deb
sudo cp /var/cuda-repo-ubuntu2204-12-3-local/cuda-*-keyring.gpg /usr/share/keyrings/
sudo apt-get update
sudo apt-get -y install cuda-toolkit-12-3
sudo apt-get install zlib1g
sudo dpkg -i cudnn-local-repo-ubuntu2204-8.9.6.50_1.0-1_amd64
sudo cp /var/cudnn-local-repo-*/cudnn-local-*-keyring.gpg /usr/share/keyrings/
sudo apt-get update
export cudnn_version=8.9.6.50
export cuda_version=12.2
sudo apt-get install libcudnn8
sudo apt-get install libcudnn8-dev
sudo apt-get install libcudnn8-samples
cp -r /usr/src/cudnn_samples_v8/ $HOME
cd  $HOME/cudnn_samples_v8/mnistCUDNN
make clean && make
./mnistCUDNN
